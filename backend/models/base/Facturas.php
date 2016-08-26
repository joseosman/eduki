<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "facturas".
 *
 * @property string $id
 * @property string $fecha
 * @property string $fecha_vence
 * @property string $estudiante_id
 * @property integer $ciclo_id
 * @property integer $turno_id
 * @property integer $curso_id
 * @property integer $paralelo_id
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Paralelos $paralelo
 * @property \backend\models\Estudiantes $estudiante
 * @property \backend\models\Ciclos $ciclo
 * @property \backend\models\Turnos $turno
 * @property \backend\models\Cursos $curso
 * @property \backend\models\FacturasDetalle[] $facturasDetalles
 * @property string $aliasModel
 */
abstract class Facturas extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'facturas';
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
            [['fecha', 'fecha_vence', 'estudiante_id', 'ciclo_id', 'turno_id', 'curso_id', 'paralelo_id'], 'required'],
            [['fecha', 'fecha_vence'], 'safe'],
            [['estudiante_id', 'ciclo_id', 'turno_id', 'curso_id', 'paralelo_id', 'deleted'], 'integer'],
            [['paralelo_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paralelos::className(), 'targetAttribute' => ['paralelo_id' => 'id']],
            [['estudiante_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estudiantes::className(), 'targetAttribute' => ['estudiante_id' => 'id']],
            [['ciclo_id'], 'exist', 'skipOnError' => true, 'targetClass' => Ciclos::className(), 'targetAttribute' => ['ciclo_id' => 'id']],
            [['turno_id'], 'exist', 'skipOnError' => true, 'targetClass' => Turnos::className(), 'targetAttribute' => ['turno_id' => 'id']],
            [['curso_id'], 'exist', 'skipOnError' => true, 'targetClass' => Cursos::className(), 'targetAttribute' => ['curso_id' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'fecha_vence' => Yii::t('backend', 'Fecha Vence'),
            'estudiante_id' => Yii::t('backend', 'Estudiante ID'),
            'ciclo_id' => Yii::t('backend', 'Ciclo ID'),
            'turno_id' => Yii::t('backend', 'Turno ID'),
            'curso_id' => Yii::t('backend', 'Curso ID'),
            'paralelo_id' => Yii::t('backend', 'Paralelo ID'),
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
    public function getParalelo()
    {
        return $this->hasOne(\backend\models\Paralelos::className(), ['id' => 'paralelo_id']);
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
    public function getCiclo()
    {
        return $this->hasOne(\backend\models\Ciclos::className(), ['id' => 'ciclo_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTurno()
    {
        return $this->hasOne(\backend\models\Turnos::className(), ['id' => 'turno_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCurso()
    {
        return $this->hasOne(\backend\models\Cursos::className(), ['id' => 'curso_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFacturasDetalles()
    {
        return $this->hasMany(\backend\models\FacturasDetalle::className(), ['factura_id' => 'id']);
    }




}