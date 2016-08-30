<?php

namespace backend\models;

use Yii;
use \backend\models\base\EstudiantesActividades as BaseEstudiantesActividades;

/**
 * This is the model class for table "estudiantes_actividades".
 */
class EstudiantesActividades extends BaseEstudiantesActividades
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'ciclo_id' => Yii::t('backend', 'Ciclo'),
            'turno_id' => Yii::t('backend', 'Turno'),
            'curso_id' => Yii::t('backend', 'Curso'),
            'materia_id' => Yii::t('backend', 'Materia'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'tipo_id' => Yii::t('backend', 'Tipo'),
            'bimestre_id' => Yii::t('backend', 'Bimestre'),
            'actividad_id' => Yii::t('backend', 'Actividad'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'nota' => Yii::t('backend', 'Nota'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
