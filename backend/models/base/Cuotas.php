<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "cuotas".
 *
 * @property string $id
 * @property string $nombre
 * @property string $descripcion
 * @property string $estudiante_id
 * @property integer $tipo_cuota_id
 * @property integer $frecuencia_id
 * @property string $descuento
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\FrecuenciaCuotas $frecuencia
 * @property \backend\models\Estudiantes $estudiante
 * @property \backend\models\TipoCuotas $tipoCuota
 * @property \backend\models\FacturasDetalle[] $facturasDetalles
 * @property string $aliasModel
 */
abstract class Cuotas extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cuotas';
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
            [['nombre', 'estudiante_id', 'tipo_cuota_id', 'frecuencia_id'], 'required'],
            [['estudiante_id', 'tipo_cuota_id', 'frecuencia_id', 'deleted'], 'integer'],
            [['descuento'], 'number'],
            [['nombre'], 'string', 'max' => 100],
            [['descripcion'], 'string', 'max' => 200],
            [['frecuencia_id'], 'exist', 'skipOnError' => true, 'targetClass' => FrecuenciaCuotas::className(), 'targetAttribute' => ['frecuencia_id' => 'id']],
            [['estudiante_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estudiantes::className(), 'targetAttribute' => ['estudiante_id' => 'id']],
            [['tipo_cuota_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoCuotas::className(), 'targetAttribute' => ['tipo_cuota_id' => 'id']]
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
            'estudiante_id' => Yii::t('backend', 'Estudiante ID'),
            'tipo_cuota_id' => Yii::t('backend', 'Tipo Cuota ID'),
            'frecuencia_id' => Yii::t('backend', 'Frecuencia ID'),
            'descuento' => Yii::t('backend', 'Descuento'),
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
    public function getFrecuencia()
    {
        return $this->hasOne(\backend\models\FrecuenciaCuotas::className(), ['id' => 'frecuencia_id']);
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
    public function getTipoCuota()
    {
        return $this->hasOne(\backend\models\TipoCuotas::className(), ['id' => 'tipo_cuota_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFacturasDetalles()
    {
        return $this->hasMany(\backend\models\FacturasDetalle::className(), ['cuota_id' => 'id']);
    }




}
