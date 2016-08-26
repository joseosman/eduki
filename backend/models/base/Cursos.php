<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "cursos".
 *
 * @property integer $id
 * @property string $nombre
 * @property string $nombre_abr
 * @property integer $ciclo_id
 * @property integer $orden_correlativo
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Actividades[] $actividades
 * @property \backend\models\AdjuntosActividades[] $adjuntosActividades
 * @property \backend\models\Asistencia[] $asistencias
 * @property \backend\models\CiclosTurnosCursosParalelos[] $ciclosTurnosCursosParalelos
 * @property \backend\models\Ciclos $ciclo
 * @property \backend\models\Estudiantes[] $estudiantes
 * @property \backend\models\EstudiantesActividades[] $estudiantesActividades
 * @property \backend\models\Facturas[] $facturas
 * @property \backend\models\FacturasDetalle[] $facturasDetalles
 * @property \backend\models\HorariosProfesores[] $horariosProfesores
 * @property \backend\models\PlanesDeClases[] $planesDeClases
 * @property \backend\models\Postulaciones[] $postulaciones
 * @property \backend\models\SistemaEvaluacion[] $sistemaEvaluacions
 * @property string $aliasModel
 */
abstract class Cursos extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cursos';
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
            [['nombre', 'nombre_abr', 'ciclo_id', 'orden_correlativo'], 'required'],
            [['ciclo_id', 'orden_correlativo', 'deleted'], 'integer'],
            [['nombre'], 'string', 'max' => 20],
            [['nombre_abr'], 'string', 'max' => 3],
            [['ciclo_id'], 'exist', 'skipOnError' => true, 'targetClass' => Ciclos::className(), 'targetAttribute' => ['ciclo_id' => 'id']]
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
            'nombre_abr' => Yii::t('backend', 'Nombre Abr'),
            'ciclo_id' => Yii::t('backend', 'Ciclo ID'),
            'orden_correlativo' => Yii::t('backend', 'Orden Correlativo'),
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
        return $this->hasMany(\backend\models\Actividades::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAdjuntosActividades()
    {
        return $this->hasMany(\backend\models\AdjuntosActividades::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAsistencias()
    {
        return $this->hasMany(\backend\models\Asistencia::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCiclosTurnosCursosParalelos()
    {
        return $this->hasMany(\backend\models\CiclosTurnosCursosParalelos::className(), ['curso_id' => 'id']);
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
    public function getEstudiantes()
    {
        return $this->hasMany(\backend\models\Estudiantes::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEstudiantesActividades()
    {
        return $this->hasMany(\backend\models\EstudiantesActividades::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFacturas()
    {
        return $this->hasMany(\backend\models\Facturas::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFacturasDetalles()
    {
        return $this->hasMany(\backend\models\FacturasDetalle::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHorariosProfesores()
    {
        return $this->hasMany(\backend\models\HorariosProfesores::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPlanesDeClases()
    {
        return $this->hasMany(\backend\models\PlanesDeClases::className(), ['curso_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPostulaciones()
    {
        return $this->hasMany(\backend\models\Postulaciones::className(), ['curso_postulado' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSistemaEvaluacions()
    {
        return $this->hasMany(\backend\models\SistemaEvaluacion::className(), ['curso_id' => 'id']);
    }




}
