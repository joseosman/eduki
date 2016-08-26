<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "ReligionesController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class ReligionesController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Religiones';
}
