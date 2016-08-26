<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    //public $basePath = '@webroot';
    //public $baseUrl = '@web';
    public $sourcePath = '@bower/backend/';
    public $css = [
        //'bower_components/bootstrap/dist/css/bootstrap.min.css', 
        'bower_components/metisMenu/dist/metisMenu.min.css', 
        'dist/css/timeline.css', 
        'dist/css/sb-admin-2.css', 
        //'bower_components/morrisjs/morris.css', 
        'bower_components/font-awesome/css/font-awesome.min.css',
    ];
    public $js = [
        //'bower_components/jquery/dist/jquery.min.js', 
        //'bower_components/bootstrap/dist/js/bootstrap.min.js', 
        'bower_components/metisMenu/dist/metisMenu.min.js', 
        'bower_components/raphael/raphael-min.js', 
        //'bower_components/morrisjs/morris.min.js', 
        //'js/morris-data.js', 
        'dist/js/sb-admin-2.js', 
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
