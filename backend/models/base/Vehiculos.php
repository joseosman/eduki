<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "vehiculos".
 *
 * @property integer $id
 * @property string $nombre
 * @property string $placa
 * @property integer $num_asientos
 * @property string $datos_seguro
 * @property integer $status
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Transporte[] $transportes
 * @property string $aliasModel
 */
abstract class Vehiculos extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'vehiculos';
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
            [['nombre', 'placa', 'num_asientos'], 'required'],
            [['num_asientos', 'status', 'deleted'], 'integer'],
            [['nombre'], 'string', 'max' => 100],
            [['placa'], 'string', 'max' => 15],
            [['datos_seguro'], 'string', 'max' => 300]
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
            'placa' => Yii::t('backend', 'Placa'),
            'num_asientos' => Yii::t('backend', 'Num Asientos'),
            'datos_seguro' => Yii::t('backend', 'Datos Seguro'),
            'status' => Yii::t('backend', 'Status'),
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
    public function getTransportes()
    {
        return $this->hasMany(\backend\models\Transporte::className(), ['vehiculo_id' => 'id']);
    }




}
