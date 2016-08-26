<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "IdiomasController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class IdiomasController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\Idiomas';
}
