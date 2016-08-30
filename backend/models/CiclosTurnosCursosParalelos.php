<?php

namespace backend\models;

use Yii;
use \backend\models\base\CiclosTurnosCursosParalelos as BaseCiclosTurnosCursosParalelos;

/**
 * This is the model class for table "ciclos_turnos_cursos_paralelos".
 */
class CiclosTurnosCursosParalelos extends BaseCiclosTurnosCursosParalelos
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
            'paralelo_id' => Yii::t('backend', 'Paralelo'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
