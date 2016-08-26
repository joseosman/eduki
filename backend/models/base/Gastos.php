<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "gastos".
 *
 * @property string $id
 * @property string $nombre
 * @property string $descripcion
 * @property string $fecha
 * @property integer $tipo_gasto_id
 * @property integer $metodo_pago_id
 * @property double $monto
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\MetodoPago $metodoPago
 * @property \backend\models\TipoGastos $tipoGasto
 * @property string $aliasModel
 */
abstract class Gastos extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'gastos';
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
            [['nombre', 'fecha', 'tipo_gasto_id', 'metodo_pago_id'], 'required'],
            [['fecha'], 'safe'],
            [['tipo_gasto_id', 'metodo_pago_id', 'deleted'], 'integer'],
            [['monto'], 'number'],
            [['nombre'], 'string', 'max' => 100],
            [['descripcion'], 'string', 'max' => 200],
            [['metodo_pago_id'], 'exist', 'skipOnError' => true, 'targetClass' => MetodoPago::className(), 'targetAttribute' => ['metodo_pago_id' => 'id']],
            [['tipo_gasto_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoGastos::className(), 'targetAttribute' => ['tipo_gasto_id' => 'id']]
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
            'fecha' => Yii::t('backend', 'Fecha'),
            'tipo_gasto_id' => Yii::t('backend', 'Tipo Gasto ID'),
            'metodo_pago_id' => Yii::t('backend', 'Metodo Pago ID'),
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
    public function getMetodoPago()
    {
        return $this->hasOne(\backend\models\MetodoPago::className(), ['id' => 'metodo_pago_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipoGasto()
    {
        return $this->hasOne(\backend\models\TipoGastos::className(), ['id' => 'tipo_gasto_id']);
    }




}