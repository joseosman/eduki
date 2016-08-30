<?php

namespace backend\models;

use Yii;
use \backend\models\base\Cuotas as BaseCuotas;

/**
 * This is the model class for table "cuotas".
 */
class Cuotas extends BaseCuotas
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
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'tipo_cuota_id' => Yii::t('backend', 'Tipo Cuota'),
            'frecuencia_id' => Yii::t('backend', 'Frecuencia'),
            'descuento' => Yii::t('backend', 'Descuento'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
