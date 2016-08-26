<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "PadresController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class PadresController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Padres';
}
