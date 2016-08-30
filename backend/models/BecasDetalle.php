<?php

namespace backend\models;

use Yii;
use \backend\models\base\BecasDetalle as BaseBecasDetalle;

/**
 * This is the model class for table "becas_detalle".
 */
class BecasDetalle extends BaseBecasDetalle
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'beca_id' => Yii::t('backend', 'Beca'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'tipo_beca_id' => Yii::t('backend', 'Tipo Beca'),
            'tipo_cuota_id' => Yii::t('backend', 'Tipo Cuota'),
            'descuento' => Yii::t('backend', 'Descuento'),
            'numero_cuotas' => Yii::t('backend', 'Numero Cuotas'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
