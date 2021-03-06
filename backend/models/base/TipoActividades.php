<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "tipo_actividades".
 *
 * @property integer $id
 * @property string $nombre
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Actividades[] $actividades
 * @property \backend\models\AdjuntosActividades[] $adjuntosActividades
 * @property \backend\models\EstudiantesActividades[] $estudiantesActividades
 * @property \backend\models\SistemaEvaluacion[] $sistemaEvaluacions
 * @property string $aliasModel
 */
abstract class TipoActividades extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tipo_actividades';
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
            [['nombre'], 'required'],
            [['deleted'], 'integer'],
            [['nombre'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombre' => Yii::t('backend', 'Nombre'),
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
    public function getActividades()
    {
        return $this->hasMany(\backend\models\Actividades::className(), ['tipo_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAdjuntosActividades()
    {
        return $this->hasMany(\backend\models\AdjuntosActividades::className(), ['tipo_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEstudiantesActividades()
    {
        return $this->hasMany(\backend\models\EstudiantesActividades::className(), ['tipo_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSistemaEvaluacions()
    {
        return $this->hasMany(\backend\models\SistemaEvaluacion::className(), ['tipo_id' => 'id']);
    }




}
