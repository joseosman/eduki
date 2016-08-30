<?php

namespace backend\models;

use Yii;
use \backend\models\base\Choferes as BaseChoferes;

/**
 * This is the model class for table "choferes".
 */
class Choferes extends BaseChoferes
{

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
            'pais_id' => Yii::t('backend', 'Pais'),
            'estado_id' => Yii::t('backend', 'Estado'),
            'tipo_sangre' => Yii::t('backend', 'Tipo Sangre'),
            'email' => Yii::t('backend', 'Email'),
            ' tel_fijo' => Yii::t('backend', 'Tel. Fijo'),
            'tel_movil' => Yii::t('backend', 'Tel. Movil'),
            'tel_emergencia' => Yii::t('backend', 'Tel. Emergencia'),
            'contacto_emergencia' => Yii::t('backend', 'Contacto Emergencia'),
            'user_id' => Yii::t('backend', 'Usuario'),
            'tipo_doc_id' => Yii::t('backend', 'Tipo Documento'),
            'num_doc_id' => Yii::t('backend', 'Númerno Documento'),
            'direc' => Yii::t('backend', 'Dirección'),
            'categoria_licencia' => Yii::t('backend', 'Categoria Licencia'),
            'num_licencia' => Yii::t('backend', 'Númerno Licencia'),
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
