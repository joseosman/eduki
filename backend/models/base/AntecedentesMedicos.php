<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "antecedentes_medicos".
 *
 * @property string $id
 * @property string $estudiante_id
 * @property string $profesor_id
 * @property string $administrativo_id
 * @property string $enfermedades_conocidas
 * @property string $alergias_conocidas
 * @property string $transtornos_conocidos
 * @property string $sindromes_conocidos
 * @property string $medicamentos_continuos
 * @property string $nombre_medico_cabecera
 * @property string $telefono_medico_cabecera
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Administrativos $administrativo
 * @property \backend\models\Estudiantes $estudiante
 * @property \backend\models\Profesores $profesor
 * @property string $aliasModel
 */
abstract class AntecedentesMedicos extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'antecedentes_medicos';
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
            [['estudiante_id', 'profesor_id', 'administrativo_id', 'deleted'], 'integer'],
            [['enfermedades_conocidas', 'alergias_conocidas', 'transtornos_conocidos', 'sindromes_conocidos', 'medicamentos_continuos'], 'string', 'max' => 300],
            [['nombre_medico_cabecera'], 'string', 'max' => 180],
            [['telefono_medico_cabecera'], 'string', 'max' => 20],
            [['administrativo_id'], 'exist', 'skipOnError' => true, 'targetClass' => Administrativos::className(), 'targetAttribute' => ['administrativo_id' => 'id']],
            [['estudiante_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estudiantes::className(), 'targetAttribute' => ['estudiante_id' => 'id']],
            [['profesor_id'], 'exist', 'skipOnError' => true, 'targetClass' => Profesores::className(), 'targetAttribute' => ['profesor_id' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'estudiante_id' => Yii::t('backend', 'Estudiante ID'),
            'profesor_id' => Yii::t('backend', 'Profesor ID'),
            'administrativo_id' => Yii::t('backend', 'Administrativo ID'),
            'enfermedades_conocidas' => Yii::t('backend', 'Enfermedades Conocidas'),
            'alergias_conocidas' => Yii::t('backend', 'Alergias Conocidas'),
            'transtornos_conocidos' => Yii::t('backend', 'Transtornos Conocidos'),
            'sindromes_conocidos' => Yii::t('backend', 'Sindromes Conocidos'),
            'medicamentos_continuos' => Yii::t('backend', 'Medicamentos Continuos'),
            'nombre_medico_cabecera' => Yii::t('backend', 'Nombre Medico Cabecera'),
            'telefono_medico_cabecera' => Yii::t('backend', 'Telefono Medico Cabecera'),
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
    public function getAdministrativo()
    {
        return $this->hasOne(\backend\models\Administrativos::className(), ['id' => 'administrativo_id']);
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
    public function getProfesor()
    {
        return $this->hasOne(\backend\models\Profesores::className(), ['id' => 'profesor_id']);
    }




}