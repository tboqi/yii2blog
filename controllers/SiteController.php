<?php

namespace app\controllers;

use app\models\LoginForm;
use app\modules\blog\models\BlogCatalog;
use app\modules\blog\models\BlogPost;
use app\modules\blog\models\BlogTag;
use app\modules\blog\models\Status;
use Yii;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\helpers\Html;
use yii\web\Controller;
use yii\web\Response;
use yii\widgets\LinkPager;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['login', 'logout', 'signup'],
                'rules' => [
                    [
                        'allow' => true,
                        'actions' => ['login', 'signup'],
                        'roles' => ['?'],
                    ],
                    [
                        'allow' => true,
                        'actions' => ['logout'],
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }
    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $this->layout = false;

        $query = BlogPost::find();
        $query->where([
            'status' => Status::STATUS_ACTIVE,
        ]);

        if (Yii::$app->request->get('keyword')) {
            $keyword = strtr(Yii::$app->request->get('keyword'), array('%' => '\%', '_' => '\_', '\\' => '\\\\'));
            $keyword = Yii::$app->formatter->asText($keyword);

            $query->andFilterWhere([
                'or', ['like', 'title', $keyword], ['like', 'content', $keyword],
            ]);
        }

        $pagination = new Pagination([
            'defaultPageSize' => Yii::$app->params['blogPostPageCount'],
            'totalCount' => $query->count(),
        ]);

        $posts = $query->orderBy('created_at desc')
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        foreach ($posts as $key => $post) {
            $posts[$key]->title = Html::a(Html::encode($post->title), $post->url);
            $posts[$key]->created_at = Yii::$app->formatter->asDate($post->created_at);
            // $posts[$key]->username = $post->user->username;
            // $posts[$key]->category = '<a href="' . Yii::$app->getUrlManager()->createUrl(['/blog/default/catalog/', 'id' => $post->catalog->id, 'surname' => $post->catalog->surname]) . '">' . $post->catalog->title . '</a>';
            // $posts[$key]->comments1 = Html::a("评论{$post->commentsCount}条", $post->url . '#comments');
            $parser = new \cebe\markdown\GithubMarkdown();
            $posts[$key]->content = $parser->parse($post->content);
        }

        $allCatalog = BlogCatalog::findAll([
            'parent_id' => 0,
        ]);
        $mainMenu = [];
        foreach ($allCatalog as $catalog) {
            $item = ['label' => $catalog->title, 'active' => ($catalog->id == $rootId)];
            if ($catalog->redirect_url) {
                $item['url'] = $catalog->redirect_url;
            } else {
                $item['url'] = Yii::$app->getUrlManager()->createUrl(['/blog/default/catalog/', 'id' => $catalog->id, 'surname' => $catalog->surname]);
            }

            if (!empty($item)) {
                array_push($mainMenu, $item);
            }
        }
        $pagination = new Pagination([
            'defaultPageSize' => Yii::$app->params['blogPostPageCount'],
            'totalCount' => $query->count(),
        ]);
        return $this->render('index.tpl', [
            'url' => [
                'static' => '/statics/',
            ],
            'title' => Yii::$app->params['blogTitle'] . ' - ' . Yii::$app->params['blogTitleSeo'],
            'posts' => $posts,
            'mainMenu' => $mainMenu,
            'pagination' => LinkPager::widget(['pagination' => $pagination]),
            'tags' => BlogTag::findTagWeights(),
            'recentPosts' => BlogPost::find()->where(['status' => Status::STATUS_ACTIVE])->orderBy(['created_at' => SORT_DESC])->limit(5)->all(),
        ]);
    }

    /**
     * Login action.
     *
     * @return Response|string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
