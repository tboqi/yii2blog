<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';
// var_dump(dirname(__DIR__) . '/qiyu');exit;
// Yii::setAlias('@qiyu', dirname(__DIR__) . '/qiyu');

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm' => '@vendor/npm-asset',
    ],
    'language' => 'zh-CN',
    'timeZone' => 'Asia/Shanghai', //time zone affect the formatter datetime format
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'M_r1GsauFV6aoC8sJubSfZclqv0u6pN3',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
        ],
        'db' => $db,
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ],
        ],
        'formatter' => [ //for the showing of date datetime
            'dateFormat' => 'yyyy-MM-dd',
            'datetimeFormat' => 'yyyy-MM-dd HH:mm:ss',
            'decimalSeparator' => ',',
            'thousandSeparator' => ' ',
            'currencyCode' => 'CNY',
        ],
        'view' => [
            'renderers' => [
                'tpl' => [
                    'class' => 'app\libs\ViewRender',
                    //'cachePath' => '@runtime/Smarty/cache',
                ],
            ],
        ],
    ],
    'defaultRoute' => 'blog', //set blog as default route
    'params' => $params,
    'modules' => [
        'admin_system' => [
            'class' => 'app\modules\admin\Module',
            'layout' => 'main',
            'menus' => [
                'assignment' => [
                    'label' => '分配权限', // change label
                ],
                'default' => [
                    'label' => '帮助', // change label
                ],
                // 'route' => null, // disable menu
            ],
            'defaultRoute' => 'default/index', //帮助页面
        ],
        'admin_blog' => [
            'class' => 'app\modules\blog\Module',
            'controllerNamespace' => 'app\modules\blog\controllers\backend',
        ],
        'blog' => [
            'class' => 'app\modules\blog\Module',
            'controllerNamespace' => 'app\modules\blog\controllers\frontend',
        ],
    ],
    'as access' => [
        'class' => 'app\modules\admin\components\AccessControl',
        'allowActions' => [
            'site/*',
            'blog/*',
            'admin*',
            'yiiadmin/*',
            'blogadmin/*',
            // 'some-controller/some-action',
        ],
    ],
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
