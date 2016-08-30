<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "CursosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class CursosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Cursos';
}
