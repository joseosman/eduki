<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "CargosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class CargosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Cargos';
}
