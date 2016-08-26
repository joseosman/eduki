<?php

namespace backend\models;

use Yii;
use \backend\models\base\Padres as BasePadres;

/**
 * This is the model class for table "padres".
 */
class Padres extends BasePadres
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
            'active' => Yii::t('backend', 'Activo'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
