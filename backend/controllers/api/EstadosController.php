<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "EstadosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class EstadosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Estados';
}
