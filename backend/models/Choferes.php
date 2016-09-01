<?php

namespace backend\models;

use Yii;
use \backend\models\base\Choferes as BaseChoferes;

/**
 * This is the model class for table "choferes".
 */
class Choferes extends BaseChoferes
{

	public $archivo;

	/**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombres', 'sex', 'pais_id', 'tel_emergencia', 'contacto_emergencia', 'tipo_doc_id', 'num_doc_id', 'categoria_licencia', 'num_licencia'], 'required'],
            [['fec_nac'], 'safe'],
            [['pais_id', 'estado_id', 'user_id', 'tipo_doc_id', 'deleted'], 'integer'],
            [['archivo'], 'file'],
            [['nombres', 'ap_pat', 'ap_mat'], 'string', 'max' => 60],
            [['sex', 'categoria_licencia'], 'string', 'max' => 1],
            [['ruta_foto'], 'string', 'max' => 2000],
            [['tipo_sangre', 'tel_fijo', 'tel_movil', 'tel_emergencia'], 'string', 'max' => 20],
            [['email'], 'string', 'max' => 255],
            [['contacto_emergencia'], 'string', 'max' => 200],
            [['num_doc_id'], 'string', 'max' => 30],
            [['direc'], 'string', 'max' => 300],
            [['num_licencia'], 'string', 'max' => 15],
            [['pais_id'], 'exist', 'skipOnError' => true, 'targetClass' => Paises::className(), 'targetAttribute' => ['pais_id' => 'id']],
            [['estado_id'], 'exist', 'skipOnError' => true, 'targetClass' => Estados::className(), 'targetAttribute' => ['estado_id' => 'id']],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['user_id' => 'id']],
            [['tipo_doc_id'], 'exist', 'skipOnError' => true, 'targetClass' => TipoDocumentos::className(), 'targetAttribute' => ['tipo_doc_id' => 'id']]
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
            'tipo_doc_id' => Yii::t('backend', 'Tipo Documento'),
            'num_doc_id' => Yii::t('backend', 'Número Documento'),
            'direc' => Yii::t('backend', 'Dirección'),
            'categoria_licencia' => Yii::t('backend', 'Categoria Licencia'),
            'num_licencia' => Yii::t('backend', 'Número Licencia'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

    public function getFullname()
    {
      return $this->nombres . " " . $this->ap_pat . " " . $this->ap_mat;
    }

    public function getFullnameinverted()
    {
      return $this->ap_pat . " " . $this->ap_mat . ' ' . $this->nombres;
    }

}
