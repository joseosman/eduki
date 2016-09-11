<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "TurnosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class TurnosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Turnos';
}
