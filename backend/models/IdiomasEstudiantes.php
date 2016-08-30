<?php

namespace backend\models;

use Yii;
use \backend\models\base\IdiomasEstudiantes as BaseIdiomasEstudiantes;

/**
 * This is the model class for table "idiomas_estudiantes".
 */
class IdiomasEstudiantes extends BaseIdiomasEstudiantes
{

	/**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['idioma_id'], 'required'],
            [['idioma_id', 'estudiante_id', 'deleted'], 'integer'],
            [['idioma_id'], 'exist', 'skipOnError' => true, 'targetClass' => Idiomas::className(), 'targetAttribute' => ['idioma_id' => 'id']],
            [['estudiante_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estudiantes::className(), 'targetAttribute' => ['estudiante_id' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'idioma_id' => Yii::t('backend', 'Idioma'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
