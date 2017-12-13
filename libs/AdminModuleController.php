<?php
namespace app\libs;

use Yii;
use yii\web\Controller;

class AdminModuleController extends Controller
{
    public function beforeAction($action)
    {
        $action = Yii::$app->controller->module->module->requestedRoute;
        if (!Yii::$app->user->can('/' . $action)) {
            throw new \yii\web\HttpException(403, 'No Auth');
        }

        if (parent::beforeAction($action)) {
            return true;
        }

        return false;
    }
}
