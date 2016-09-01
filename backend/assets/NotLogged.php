<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class NotLoggedAsset extends AssetBundle
{
    //public $basePath = '@webroot';
    //public $baseUrl = '@web';
    public $sourcePath = '@bower/backend/';
    public $css = [
        'dist/css/sb-admin-2.css', 
        'bower_components/font-awesome/css/font-awesome.min.css',
    ];
    public $js = [
        'dist/js/sb-admin-2.js', 
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
