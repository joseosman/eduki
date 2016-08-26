<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "criterios_admision".
 *
 * @property integer $id
 * @property string $nombre
 * @property string $descripcion
 * @property integer $peso
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\PuntajeAdmision[] $puntajeAdmisions
 * @property string $aliasModel
 */
abstract class CriteriosAdmision extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'criterios_admision';
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
            [['nombre', 'peso'], 'required'],
            [['peso', 'deleted'], 'integer'],
            [['nombre'], 'string', 'max' => 100],
            [['descripcion'], 'string', 'max' => 200]
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
            'descripcion' => Yii::t('backend', 'Descripcion'),
            'peso' => Yii::t('backend', 'Peso'),
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
    public function getPuntajeAdmisions()
    {
        return $this->hasMany(\backend\models\PuntajeAdmision::className(), ['criterio_id' => 'id']);
    }




}
