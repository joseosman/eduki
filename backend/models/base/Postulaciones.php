<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;

/**
 * This is the base-model class for table "postulaciones".
 *
 * @property string $id
 * @property string $nombres
 * @property string $apellido_paterno
 * @property string $apellido_materno
 * @property string $fecha_postulacion
 * @property integer $ciclo_postulado
 * @property integer $curso_postulado
 * @property string $destacado_materias
 * @property string $destacado_deportes
 * @property string $destacado_eventos
 * @property integer $deleted
 *
 * @property \backend\models\Cursos $cursoPostulado
 * @property \backend\models\Ciclos $cicloPostulado
 * @property \backend\models\PuntajeAdmision[] $puntajeAdmisions
 * @property string $aliasModel
 */
abstract class Postulaciones extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'postulaciones';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombres', 'fecha_postulacion', 'ciclo_postulado', 'curso_postulado'], 'required'],
            [['fecha_postulacion'], 'safe'],
            [['ciclo_postulado', 'curso_postulado', 'deleted'], 'integer'],
            [['nombres', 'apellido_paterno', 'apellido_materno'], 'string', 'max' => 60],
            [['destacado_materias', 'destacado_deportes', 'destacado_eventos'], 'string', 'max' => 200],
            [['curso_postulado'], 'exist', 'skipOnError' => true, 'targetClass' => Cursos::className(), 'targetAttribute' => ['curso_postulado' => 'id']],
            [['ciclo_postulado'], 'exist', 'skipOnError' => true, 'targetClass' => Ciclos::className(), 'targetAttribute' => ['ciclo_postulado' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombres' => Yii::t('backend', 'Nombres'),
            'apellido_paterno' => Yii::t('backend', 'Apellido Paterno'),
            'apellido_materno' => Yii::t('backend', 'Apellido Materno'),
            'fecha_postulacion' => Yii::t('backend', 'Fecha Postulacion'),
            'ciclo_postulado' => Yii::t('backend', 'Ciclo Postulado'),
            'curso_postulado' => Yii::t('backend', 'Curso Postulado'),
            'destacado_materias' => Yii::t('backend', 'Destacado Materias'),
            'destacado_deportes' => Yii::t('backend', 'Destacado Deportes'),
            'destacado_eventos' => Yii::t('backend', 'Destacado Eventos'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCursoPostulado()
    {
        return $this->hasOne(\backend\models\Cursos::className(), ['id' => 'curso_postulado']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCicloPostulado()
    {
        return $this->hasOne(\backend\models\Ciclos::className(), ['id' => 'ciclo_postulado']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPuntajeAdmisions()
    {
        return $this->hasMany(\backend\models\PuntajeAdmision::className(), ['postulacion_id' => 'id']);
    }




}
