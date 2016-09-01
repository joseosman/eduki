<?php

namespace backend\models;

use Yii;
use \backend\models\base\Transporte as BaseTransporte;

/**
 * This is the model class for table "transporte".
 */
class Transporte extends BaseTransporte
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'ruta_id' => Yii::t('backend', 'Ruta'),
            'vehiculo_id' => Yii::t('backend', 'Vehiculo'),
            'chofer_id' => Yii::t('backend', 'Chofer'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
