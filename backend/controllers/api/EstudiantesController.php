<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "EstudiantesController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class EstudiantesController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Estudiantes';
}
