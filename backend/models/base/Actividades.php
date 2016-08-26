<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "actividades".
 *
 * @property string $id
 * @property string $nombre
 * @property string $desc
 * @property integer $ciclo_id
 * @property integer $turno_id
 * @property integer $curso_id
 * @property integer $materia_id
 * @property string $profesor_id
 * @property integer $tipo_id
 * @property integer $bimestre_id
 * @property string $fecha
 * @property integer $puntaje_max
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Bimestres $bimestre
 * @property \backend\models\Ciclos $ciclo
 * @property \backend\models\Turnos $turno
 * @property \backend\models\Cursos $curso
 * @property \backend\models\Materias $materia
 * @property \backend\models\Profesores $profesor
 * @property \backend\models\TipoActividades $tipo
 * @property \backend\models\AdjuntosActividades[] $adjuntosActividades
 * @property \backend\models\EstudiantesActividades[] $estudiantesActividades
 * @property string $aliasModel
 */
abstract class Actividades extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'actividades';
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
            [['nombre', 'ciclo_id', 'turno_id', 'curso_id', 'materia_id', 'profesor_id', 'tipo_id', 'bimestre_id', 'fecha', 'puntaje_max'], 'required'],
            [['ciclo_id', 'turno_id', 'curso_id', 'materia_id', 'profesor_id', 'tipo_id', 'bimestre_id', 'puntaje_max', 'deleted'], 'integer'],
            [['fecha'], 'safe'],
            [['nombre'], 'string', 'max' => 250],
            [['desc'], 'string', 'max' => 255],
            [['bimestre_id'], 'exist', 'skipOnError' => true, 'targetClass' => Bimestres::className(), 'targetAttribute' => ['bimestre_id' => 'id']],
            [['ciclo_id'], 'exist', 'skipOnError' => true, 'targetClass' => Ciclos::className(), 'targetAttribute' => ['ciclo_id' => 'id']],
            [['turno_id'], 'exist', 'skipOnError' => true, 'targetClass' => Turnos::className(), 'targetAttribute' => ['turno_id' => 'id']],
            [['curso_id'], 'exist', 'skipOnError' => true, 'targetClass' => Cursos::className(), 'targetAttribute' => ['curso_id' => 'id']],
            [['materia_id'], 'exist', 'skipOnError' => true, 'targetClass' => Materias::className(), 'targetAttribute' => ['materia_id' => 'id']],
            [['profesor_id'], 'exist', 'skipOnError' => true, 'targetClass' => Profesores::className(), 'targetAttribute' => ['profesor_id' => 'id']],
            [['tipo_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoActividades::className(), 'targetAttribute' => ['tipo_id' => 'id']]
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
            'desc' => Yii::t('backend', 'Desc'),
            'ciclo_id' => Yii::t('backend', 'Ciclo ID'),
            'turno_id' => Yii::t('backend', 'Turno ID'),
            'curso_id' => Yii::t('backend', 'Curso ID'),
            'materia_id' => Yii::t('backend', 'Materia ID'),
            'profesor_id' => Yii::t('backend', 'Profesor ID'),
            'tipo_id' => Yii::t('backend', 'Tipo ID'),
            'bimestre_id' => Yii::t('backend', 'Bimestre ID'),
            'fecha' => Yii::t('backend', 'Fecha'),
            'puntaje_max' => Yii::t('backend', 'Puntaje Max'),
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
    public function getBimestre()
    {
        return $this->hasOne(\backend\models\Bimestres::className(), ['id' => 'bimestre_id']);
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
    public function getMateria()
    {
        return $this->hasOne(\backend\models\Materias::className(), ['id' => 'materia_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProfesor()
    {
        return $this->hasOne(\backend\models\Profesores::className(), ['id' => 'profesor_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipo()
    {
        return $this->hasOne(\backend\models\TipoActividades::className(), ['id' => 'tipo_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAdjuntosActividades()
    {
        return $this->hasMany(\backend\models\AdjuntosActividades::className(), ['actividad_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEstudiantesActividades()
    {
        return $this->hasMany(\backend\models\EstudiantesActividades::className(), ['actividad_id' => 'id']);
    }




}