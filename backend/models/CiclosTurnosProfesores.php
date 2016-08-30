<?php

namespace backend\models;

use Yii;
use \backend\models\base\CiclosTurnosProfesores as BaseCiclosTurnosProfesores;

/**
 * This is the model class for table "ciclos_turnos_profesores".
 */
class CiclosTurnosProfesores extends BaseCiclosTurnosProfesores
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
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
