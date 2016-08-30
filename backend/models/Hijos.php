<?php

namespace backend\models;

use Yii;
use \backend\models\base\Hijos as BaseHijos;

/**
 * This is the model class for table "hijos".
 */
class Hijos extends BaseHijos
{

	/**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['estudiante_id'], 'required'],
            [['padre_id', 'estudiante_id', 'deleted'], 'integer'],
            [['estudiante_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estudiantes::className(), 'targetAttribute' => ['estudiante_id' => 'id']],
            [['padre_id'], 'exist', 'skipOnError' => true, 'targetClass' => Padres::className(), 'targetAttribute' => ['padre_id' => 'id']]
        ];
    }

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'padre_id' => Yii::t('backend', 'Padre'),
            'estudiante_id' => Yii::t('backend', 'Hijo(a)'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
