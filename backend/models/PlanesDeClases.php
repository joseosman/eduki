<?php

namespace backend\models;

use Yii;
use \backend\models\base\PlanesDeClases as BasePlanesDeClases;

/**
 * This is the model class for table "planes_de_clases".
 */
class PlanesDeClases extends BasePlanesDeClases
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'ciclo_id' => Yii::t('backend', 'Ciclo'),
            'turno_id' => Yii::t('backend', 'Turno'),
            'curso_id' => Yii::t('backend', 'Curso'),
            'paralelo_id' => Yii::t('backend', 'Paralelo'),
            'materia_id' => Yii::t('backend', 'Materia'),
            'hora' => Yii::t('backend', 'Hora'),
            'dia' => Yii::t('backend', 'Dia'),
            'objetivo' => Yii::t('backend', 'Objetivo'),
            'procedimiento' => Yii::t('backend', 'Procedimiento'),
            'pag_libro' => Yii::t('backend', 'Pag Libro'),
            'otros_recursos' => Yii::t('backend', 'Otros Recursos'),
            'tareas' => Yii::t('backend', 'Tareas'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
