<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "AdministrativosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class AdministrativosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Administrativos';
}
