<?php

namespace backend\models;

use Yii;
use \backend\models\base\Asistencia as BaseAsistencia;

/**
 * This is the model class for table "asistencia".
 */
class Asistencia extends BaseAsistencia
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
            'periodo_id' => Yii::t('backend', 'Periodo'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'estado_id' => Yii::t('backend', 'Estado'),
            'bimestre_id' => Yii::t('backend', 'Bimestre'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'comentario' => Yii::t('backend', 'Comentario'),
            'licencia' => Yii::t('backend', 'Licencia'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
