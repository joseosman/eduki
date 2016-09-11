<?php

namespace backend\models;

use Yii;
use \backend\models\base\Cargos as BaseCargos;

/**
 * This is the model class for table "cargos".
 */
class Cargos extends BaseCargos
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombre' => Yii::t('backend', 'Nombre'),
            'descripcion' => Yii::t('backend', 'Descripcion'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }
	
}
