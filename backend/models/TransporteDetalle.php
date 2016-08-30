<?php

namespace backend\models;

use Yii;
use \backend\models\base\TransporteDetalle as BaseTransporteDetalle;

/**
 * This is the model class for table "transporte_detalle".
 */
class TransporteDetalle extends BaseTransporteDetalle
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'transporte_id' => Yii::t('backend', 'Transporte'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
