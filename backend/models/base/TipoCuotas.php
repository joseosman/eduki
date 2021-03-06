<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "tipo_cuotas".
 *
 * @property integer $id
 * @property string $nombre
 * @property string $descripcion
 * @property string $monto
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\BecasDetalle[] $becasDetalles
 * @property \backend\models\Cuotas[] $cuotas
 * @property string $aliasModel
 */
abstract class TipoCuotas extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tipo_cuotas';
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
            [['nombre', 'monto'], 'required'],
            [['monto'], 'number'],
            [['deleted'], 'integer'],
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
            'monto' => Yii::t('backend', 'Monto'),
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
    public function getBecasDetalles()
    {
        return $this->hasMany(\backend\models\BecasDetalle::className(), ['tipo_cuota_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCuotas()
    {
        return $this->hasMany(\backend\models\Cuotas::className(), ['tipo_cuota_id' => 'id']);
    }




}
