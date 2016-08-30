<?php

namespace backend\models;

use Yii;
use \backend\models\base\Actividades as BaseActividades;

/**
 * This is the model class for table "actividades".
 */
class Actividades extends BaseActividades
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombre' => Yii::t('backend', 'Nombre'),
            'desc' => Yii::t('backend', 'Descripción'),
            'ciclo_id' => Yii::t('backend', 'Ciclo'),
            'turno_id' => Yii::t('backend', 'Turno'),
            'curso_id' => Yii::t('backend', 'Curso'),
            'materia_id' => Yii::t('backend', 'Materia'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'tipo_id' => Yii::t('backend', 'Tipo'),
            'bimestre_id' => Yii::t('backend', 'Bimestre'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'puntaje_max' => Yii::t('backend', 'Puntaje Max'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
