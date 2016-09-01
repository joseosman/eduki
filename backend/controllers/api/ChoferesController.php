<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "ChoferesController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class ChoferesController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Choferes';
}
