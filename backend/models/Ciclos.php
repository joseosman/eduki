<?php

namespace backend\models;

use Yii;
use \backend\models\base\Ciclos as BaseCiclos;

/**
 * This is the model class for table "ciclos".
 */
class Ciclos extends BaseCiclos
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombre' => Yii::t('backend', 'Nombre'),
            'nombre_abr' => Yii::t('backend', 'Nombre Corto'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
