<?php

namespace backend\models;

use Yii;
use \backend\models\base\Becas as BaseBecas;

/**
 * This is the model class for table "becas".
 */
class Becas extends BaseBecas
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'tipo_beca_id' => Yii::t('backend', 'Tipo Beca'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
