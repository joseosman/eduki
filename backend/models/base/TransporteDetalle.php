<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "transporte_detalle".
 *
 * @property integer $id
 * @property integer $transporte_id
 * @property string $estudiante_id
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Estudiantes $estudiante
 * @property \backend\models\Transporte $transporte
 * @property string $aliasModel
 */
abstract class TransporteDetalle extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'transporte_detalle';
    }


    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            [
                'class' => BlameableBehavior::className(),
            ],
            [
                'class' => TimestampBehavior::className(),
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['transporte_id', 'estudiante_id'], 'required'],
            [['transporte_id', 'estudiante_id', 'deleted'], 'integer'],
            [['estudiante_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estudiantes::className(), 'targetAttribute' => ['estudiante_id' => 'id']],
            [['transporte_id'], 'exist', 'skipOnError' => true, 'targetClass' => Transporte::className(), 'targetAttribute' => ['transporte_id' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'transporte_id' => Yii::t('backend', 'Transporte ID'),
            'estudiante_id' => Yii::t('backend', 'Estudiante ID'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEstudiante()
    {
        return $this->hasOne(\backend\models\Estudiantes::className(), ['id' => 'estudiante_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTransporte()
    {
        return $this->hasOne(\backend\models\Transporte::className(), ['id' => 'transporte_id']);
    }




}
