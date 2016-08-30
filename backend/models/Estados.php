<?php

namespace backend\models;

use Yii;
use \backend\models\base\Estados as BaseEstados;

/**
 * This is the model class for table "estados".
 */
class Estados extends BaseEstados
{
	
	public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['pais_id', 'deleted'], 'integer'],
            [['nombre'], 'string', 'max' => 100],
            [['pais_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paises::className(), 'targetAttribute' => ['pais_id' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'pais_id' => Yii::t('backend', 'Pais'),
            'nombre' => Yii::t('backend', 'Nombre'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }
	
}
