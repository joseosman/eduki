<?php

namespace backend\models;

use Yii;
use \backend\models\base\LlamadasAtencion as BaseLlamadasAtencion;

/**
 * This is the model class for table "llamadas_atencion".
 */
class LlamadasAtencion extends BaseLlamadasAtencion
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'tipo_llamada_id' => Yii::t('backend', 'Tipo Llamada'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'administrativo_id' => Yii::t('backend', 'Administrativo'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'explicacion' => Yii::t('backend', 'Explicacion'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
