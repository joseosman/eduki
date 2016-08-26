<?php

namespace backend\models;

use Yii;
use \backend\models\base\Paises as BasePaises;

/**
 * This is the model class for table "paises".
 */
class Paises extends BasePaises
{
	
	/**
     * @return \yii\db\ActiveQuery
     */
    public function getEstados()
    {
        return $this->hasMany(\backend\models\Estados::className(), ['pais_id' => 'id'])->
		orderBy(['nombre' => SORT_ASC]);
    }
	
}
