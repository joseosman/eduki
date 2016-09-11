<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "DatosGeneralesController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class DatosGeneralesController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\DatosGenerales';
}
