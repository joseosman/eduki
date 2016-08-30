<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "CiclosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class CiclosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Ciclos';
}
