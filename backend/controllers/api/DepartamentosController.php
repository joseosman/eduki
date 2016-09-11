<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "DepartamentosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class DepartamentosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Departamentos';
}
