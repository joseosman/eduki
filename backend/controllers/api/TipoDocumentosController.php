<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "TipoDocumentosController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class TipoDocumentosController extends \yii\rest\ActiveController
{
public $modelClass = 'backend\models\TipoDocumentos';
}
