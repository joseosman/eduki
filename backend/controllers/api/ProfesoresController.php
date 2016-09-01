<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "ProfesoresController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class ProfesoresController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Profesores';
}
