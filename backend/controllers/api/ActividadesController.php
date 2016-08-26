<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "ActividadesController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class ActividadesController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Actividades';
}
