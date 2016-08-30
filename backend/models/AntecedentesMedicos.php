<?php

namespace backend\models;

use Yii;
use \backend\models\base\AntecedentesMedicos as BaseAntecedentesMedicos;

/**
 * This is the model class for table "antecedentes_medicos".
 */
class AntecedentesMedicos extends BaseAntecedentesMedicos
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
            'enfermedades_conocidas' => Yii::t('backend', 'Enfermedades Conocidas'),
            'alergias_conocidas' => Yii::t('backend', 'Alergias Conocidas'),
            'transtornos_conocidos' => Yii::t('backend', 'Transtornos Conocidos'),
            'sindromes_conocidos' => Yii::t('backend', 'Sindromes Conocidos'),
            'medicamentos_continuos' => Yii::t('backend', 'Medicamentos Continuos'),
            'nombre_medico_cabecera' => Yii::t('backend', 'Nombre Medico Cabecera'),
            'telefono_medico_cabecera' => Yii::t('backend', 'Telefono Medico Cabecera'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
