<?php

namespace backend\models;

use Yii;
use \backend\models\base\Semanas as BaseSemanas;

/**
 * This is the model class for table "semanas".
 */
class Semanas extends BaseSemanas
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'numero' => Yii::t('backend', 'Número'),
            'fecha_ini' => Yii::t('backend', 'Fecha Inicio'),
            'fecha_fin' => Yii::t('backend', 'Fecha Fin'),
            'active' => Yii::t('backend', 'Activo'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
