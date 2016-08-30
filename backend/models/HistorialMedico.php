<?php

namespace backend\models;

use Yii;
use \backend\models\base\HistorialMedico as BaseHistorialMedico;

/**
 * This is the model class for table "historial_medico".
 */
class HistorialMedico extends BaseHistorialMedico
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'administrativo_id' => Yii::t('backend', 'Administrativo'),
            'grados_temp' => Yii::t('backend', 'Grados Temp'),
            'presion_sistolica' => Yii::t('backend', 'Presion Sistolica'),
            'presion_diastolica' => Yii::t('backend', 'Presion Diastolica'),
            'sintomas' => Yii::t('backend', 'Sintomas'),
            'antecedente_sintomas' => Yii::t('backend', 'Antecedente Sintomas'),
            'diagnostico' => Yii::t('backend', 'Diagnostico'),
            'medicacion_aplicada' => Yii::t('backend', 'Medicacion Aplicada'),
            'medicacion_sugerida' => Yii::t('backend', 'Medicacion Sugerida'),
            'recomendaciones' => Yii::t('backend', 'Recomendaciones'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
