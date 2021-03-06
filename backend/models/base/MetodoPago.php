<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;

/**
 * This is the base-model class for table "metodo_pago".
 *
 * @property integer $id
 * @property string $nombre
 * @property string $descripcion
 * @property integer $deleted
 *
 * @property \backend\models\Gastos[] $gastos
 * @property string $aliasModel
 */
abstract class MetodoPago extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'metodo_pago';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre', 'deleted'], 'required'],
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
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGastos()
    {
        return $this->hasMany(\backend\models\Gastos::className(), ['metodo_pago_id' => 'id']);
    }




}
