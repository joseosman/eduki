<?php

namespace backend\models;

use Yii;
use \backend\models\base\CiclosTurnos as BaseCiclosTurnos;

/**
 * This is the model class for table "ciclos_turnos".
 */
class CiclosTurnos extends BaseCiclosTurnos
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
            'coord_admin_id' => Yii::t('backend', 'Coordinador'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
