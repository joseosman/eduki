<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "profesores".
 *
 * @property string $id
 * @property string $nombres
 * @property string $ap_pat
 * @property string $ap_mat
 * @property string $fec_nac
 * @property string $sex
 * @property string $ruta_foto
 * @property integer $pais_id
 * @property integer $estado_id
 * @property string $tipo_sangre
 * @property string $email
 * @property string $tel_fijo
 * @property string $tel_movil
 * @property string $tel_emergencia
 * @property string $contacto_emergencia
 * @property string $user_id
 * @property integer $tipo_doc_id
 * @property string $num_doc_id
 * @property string $direc
 * @property string $fec_ini
 * @property string $email_trabajo
 * @property string $tel_fijo_trabajo
 * @property string $tel_movil_trabajo
 * @property string $aula_oficina
 * @property string $nombre_afp
 * @property string $num_de_afp
 * @property integer $active
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\Actividades[] $actividades
 * @property \backend\models\AdjuntosActividades[] $adjuntosActividades
 * @property \backend\models\AntecedentesMedicos[] $antecedentesMedicos
 * @property \backend\models\Asistencia[] $asistencias
 * @property \backend\models\CiclosTurnosProfesores[] $ciclosTurnosProfesores
 * @property \backend\models\EstudiantesActividades[] $estudiantesActividades
 * @property \backend\models\HistorialMedico[] $historialMedicos
 * @property \backend\models\HorariosProfesores[] $horariosProfesores
 * @property \backend\models\LibrosPrestamos[] $librosPrestamos
 * @property \backend\models\LlamadasAtencion[] $llamadasAtencions
 * @property \backend\models\PlanesDeClases[] $planesDeClases
 * @property \backend\models\TipoDocumentos $tipoDoc
 * @property \backend\models\Paises $pais
 * @property \backend\models\Estados $estado
 * @property \backend\models\User $user
 * @property \backend\models\SistemaEvaluacion[] $sistemaEvaluacions
 * @property string $aliasModel
 */
abstract class Profesores extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'profesores';
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
            [['nombres', 'sex', 'pais_id', 'tel_emergencia', 'contacto_emergencia', 'tipo_doc_id', 'num_doc_id', 'email_trabajo'], 'required'],
            [['fec_nac', 'fec_ini'], 'safe'],
            [['pais_id', 'estado_id', 'user_id', 'tipo_doc_id', 'active', 'deleted'], 'integer'],
            [['nombres', 'ap_pat', 'ap_mat'], 'string', 'max' => 60],
            [['sex'], 'string', 'max' => 1],
            [['ruta_foto'], 'string', 'max' => 2000],
            [['tipo_sangre', 'tel_fijo', 'tel_movil', 'tel_emergencia', 'tel_fijo_trabajo', 'tel_movil_trabajo'], 'string', 'max' => 20],
            [['email', 'email_trabajo', 'aula_oficina'], 'string', 'max' => 255],
            [['contacto_emergencia'], 'string', 'max' => 200],
            [['num_doc_id', 'nombre_afp'], 'string', 'max' => 30],
            [['direc'], 'string', 'max' => 300],
            [['num_de_afp'], 'string', 'max' => 15],
            [['tipo_doc_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoDocumentos::className(), 'targetAttribute' => ['tipo_doc_id' => 'id']],
            [['pais_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paises::className(), 'targetAttribute' => ['pais_id' => 'id']],
            [['estado_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estados::className(), 'targetAttribute' => ['estado_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']]
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
            'ap_pat' => Yii::t('backend', 'Ap Pat'),
            'ap_mat' => Yii::t('backend', 'Ap Mat'),
            'fec_nac' => Yii::t('backend', 'Fec Nac'),
            'sex' => Yii::t('backend', 'Sex'),
            'ruta_foto' => Yii::t('backend', 'Ruta Foto'),
            'pais_id' => Yii::t('backend', 'Pais ID'),
            'estado_id' => Yii::t('backend', 'Estado ID'),
            'tipo_sangre' => Yii::t('backend', 'Tipo Sangre'),
            'email' => Yii::t('backend', 'Email'),
            'tel_fijo' => Yii::t('backend', 'Tel Fijo'),
            'tel_movil' => Yii::t('backend', 'Tel Movil'),
            'tel_emergencia' => Yii::t('backend', 'Tel Emergencia'),
            'contacto_emergencia' => Yii::t('backend', 'Contacto Emergencia'),
            'user_id' => Yii::t('backend', 'User ID'),
            'tipo_doc_id' => Yii::t('backend', 'Tipo Doc ID'),
            'num_doc_id' => Yii::t('backend', 'Num Doc ID'),
            'direc' => Yii::t('backend', 'Direc'),
            'fec_ini' => Yii::t('backend', 'Fec Ini'),
            'email_trabajo' => Yii::t('backend', 'Email Trabajo'),
            'tel_fijo_trabajo' => Yii::t('backend', 'Tel Fijo Trabajo'),
            'tel_movil_trabajo' => Yii::t('backend', 'Tel Movil Trabajo'),
            'aula_oficina' => Yii::t('backend', 'Aula Oficina'),
            'nombre_afp' => Yii::t('backend', 'Nombre Afp'),
            'num_de_afp' => Yii::t('backend', 'Num De Afp'),
            'active' => Yii::t('backend', 'Active'),
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
        return $this->hasMany(\backend\models\Actividades::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAdjuntosActividades()
    {
        return $this->hasMany(\backend\models\AdjuntosActividades::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAntecedentesMedicos()
    {
        return $this->hasMany(\backend\models\AntecedentesMedicos::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAsistencias()
    {
        return $this->hasMany(\backend\models\Asistencia::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCiclosTurnosProfesores()
    {
        return $this->hasMany(\backend\models\CiclosTurnosProfesores::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEstudiantesActividades()
    {
        return $this->hasMany(\backend\models\EstudiantesActividades::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHistorialMedicos()
    {
        return $this->hasMany(\backend\models\HistorialMedico::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHorariosProfesores()
    {
        return $this->hasMany(\backend\models\HorariosProfesores::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLibrosPrestamos()
    {
        return $this->hasMany(\backend\models\LibrosPrestamos::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLlamadasAtencions()
    {
        return $this->hasMany(\backend\models\LlamadasAtencion::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPlanesDeClases()
    {
        return $this->hasMany(\backend\models\PlanesDeClases::className(), ['profesor_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTipoDoc()
    {
        return $this->hasOne(\backend\models\TipoDocumentos::className(), ['id' => 'tipo_doc_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPais()
    {
        return $this->hasOne(\backend\models\Paises::className(), ['id' => 'pais_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEstado()
    {
        return $this->hasOne(\backend\models\Estados::className(), ['id' => 'estado_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(\backend\models\User::className(), ['id' => 'user_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSistemaEvaluacions()
    {
        return $this->hasMany(\backend\models\SistemaEvaluacion::className(), ['profesor_id' => 'id']);
    }




}
