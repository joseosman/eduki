<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "PaisesController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class PaisesController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Paises';
}
