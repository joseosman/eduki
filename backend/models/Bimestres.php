<?php

namespace backend\models;

use Yii;
use \backend\models\base\Bimestres as BaseBimestres;

/**
 * This is the model class for table "bimestres".
 */
class Bimestres extends BaseBimestres
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombre' => Yii::t('backend', 'Nombre'),
            'mes_ini' => Yii::t('backend', 'Mes Inicio'),
            'mes_fin' => Yii::t('backend', 'Mes Fin'),
            'active' => Yii::t('backend', 'Activo'),
            'editable' => Yii::t('backend', 'Editable'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
