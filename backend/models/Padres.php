<?php

namespace backend\models;

use Yii;
use \backend\models\base\Padres as BasePadres;

/**
 * This is the model class for table "padres".
 */
class Padres extends BasePadres
{

    public $archivo;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombres', 'sex', 'pais_id', 'tel_emergencia', 'contacto_emergencia', 'tipo_doc_id', 'num_doc_id', 'email_trabajo'], 'required'],
            [['fec_nac'], 'safe'],
            [['pais_id', 'estado_id', 'user_id', 'tipo_doc_id', 'conyuge_id', 'active', 'deleted'], 'integer'],
            [['archivo'], 'file'],
            [['nombres', 'ap_pat', 'ap_mat'], 'string', 'max' => 60],
            [['sex'], 'string', 'max' => 1],
            [['ruta_foto'], 'string', 'max' => 2000],
            [['tipo_sangre', 'tel_fijo', 'tel_movil', 'tel_emergencia', 'tel_fijo_trabajo', 'tel_movil_trabajo'], 'string', 'max' => 20],
            [['email', 'email_trabajo'], 'string', 'max' => 255],
            [['contacto_emergencia'], 'string', 'max' => 200],
            [['num_doc_id', 'nit'], 'string', 'max' => 30],
            [['direc'], 'string', 'max' => 300],
            [['profesion'], 'string', 'max' => 100],
            [['razon_social'], 'string', 'max' => 180],
            [['tipo_doc_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoDocumentos::className(), 'targetAttribute' => ['tipo_doc_id' => 'id']],
            [['pais_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paises::className(), 'targetAttribute' => ['pais_id' => 'id']],
            [['estado_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estados::className(), 'targetAttribute' => ['estado_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
            //[['conyuge_id'], 'exist', 'skipOnError' => true, 'targetClass' => Padres::className(), 'targetAttribute' => ['conyuge_id' => 'id']]
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
            'ap_pat' => Yii::t('backend', 'Apellido Paterno'),
            'ap_mat' => Yii::t('backend', 'Apellido Materno'),
            'fec_nac' => Yii::t('backend', 'Fecha Nacimiento'),
            'sex' => Yii::t('backend', 'Sexo'),
            'ruta_foto' => Yii::t('backend', 'Foto'),
            'archivo' => Yii::t('backend', 'Foto'),
            'pais_id' => Yii::t('backend', 'Pais'),
            'estado_id' => Yii::t('backend', 'Estado'),
            'tipo_sangre' => Yii::t('backend', 'Tipo Sangre'),
            'email' => Yii::t('backend', 'Email'),
            'tel_fijo' => Yii::t('backend', 'Tel. Fijo'),
            'tel_movil' => Yii::t('backend', 'Tel. Movil'),
            'tel_emergencia' => Yii::t('backend', 'Tel. Emergencia'),
            'contacto_emergencia' => Yii::t('backend', 'Contacto Emergencia'),
            'user_id' => Yii::t('backend', 'Usuario'),
            'tipo_doc_id' => Yii::t('backend', 'Tipo Documento Identidad'),
            'num_doc_id' => Yii::t('backend', 'Num. Documento Identidad'),
            'direc' => Yii::t('backend', 'Dirección'),
            'email_trabajo' => Yii::t('backend', 'Email Trabajo'),
            'tel_fijo_trabajo' => Yii::t('backend', 'Tel. Fijo Trabajo'),
            'tel_movil_trabajo' => Yii::t('backend', 'Tel. Movil Trabajo'),
            'profesion' => Yii::t('backend', 'Profesión'),
            'nit' => Yii::t('backend', 'NIT'),
            'razon_social' => Yii::t('backend', 'Razón Social'),
            'conyuge_id' => Yii::t('backend', 'Conyuge'),
            'active' => Yii::t('backend', 'Activo'),
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
    public function getFullname()
    {
        return $this->nombres . ' ' . $this->ap_pat . ' ' . $this->ap_mat;
    }

    public function getFullnameinverted()
    {
        return $this->ap_pat . ' ' . $this->ap_mat . ' ' . $this->nombres;
    }

}
