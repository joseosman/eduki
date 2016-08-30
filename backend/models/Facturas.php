<?php

namespace backend\models;

use Yii;
use \backend\models\base\Facturas as BaseFacturas;

/**
 * This is the model class for table "facturas".
 */
class Facturas extends BaseFacturas
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'fecha_vence' => Yii::t('backend', 'Fecha Vence'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'ciclo_id' => Yii::t('backend', 'Ciclo'),
            'turno_id' => Yii::t('backend', 'Turno'),
            'curso_id' => Yii::t('backend', 'Curso'),
            'paralelo_id' => Yii::t('backend', 'Paralelo'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
