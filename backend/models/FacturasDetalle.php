<?php

namespace backend\models;

use Yii;
use \backend\models\base\FacturasDetalle as BaseFacturasDetalle;

/**
 * This is the model class for table "facturas_detalle".
 */
class FacturasDetalle extends BaseFacturasDetalle
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'factura_id' => Yii::t('backend', 'Factura'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'ciclo_id' => Yii::t('backend', 'Ciclo'),
            'turno_id' => Yii::t('backend', 'Turno'),
            'curso_id' => Yii::t('backend', 'Curso'),
            'paralelo_id' => Yii::t('backend', 'Paralelo'),
            'cuota_id' => Yii::t('backend', 'Cuota'),
            'cantidad' => Yii::t('backend', 'Cantidad'),
            'monto' => Yii::t('backend', 'Monto'),
            'descuento' => Yii::t('backend', 'Descuento'),
            'total' => Yii::t('backend', 'Total'),
            'payed' => Yii::t('backend', 'Payed'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
