<?php

namespace backend\models;

use Yii;
use \backend\models\base\Estados as BaseEstados;

/**
 * This is the model class for table "estados".
 */
class Estados extends BaseEstados
{
	
	public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['pais_id', 'deleted'], 'integer'],
            [['nombre'], 'string', 'max' => 100],
            [['pais_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paises::className(), 'targetAttribute' => ['pais_id' => 'id']]
        ];
    }
	
}
