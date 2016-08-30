<?php

namespace backend\models;

use Yii;
use \backend\models\base\LibrosPrestamos as BaseLibrosPrestamos;

/**
 * This is the model class for table "libros_prestamos".
 */
class LibrosPrestamos extends BaseLibrosPrestamos
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'libro_id' => Yii::t('backend', 'Libro'),
            'estudiante_id' => Yii::t('backend', 'Estudiante'),
            'profesor_id' => Yii::t('backend', 'Profesor'),
            'administrativo_id' => Yii::t('backend', 'Administrativo'),
            'fecha_retiro' => Yii::t('backend', 'Fecha Retiro'),
            'fecha_plazo' => Yii::t('backend', 'Fecha Plazo'),
            'fecha_retorno' => Yii::t('backend', 'Fecha Retorno'),
            'multa' => Yii::t('backend', 'Multa'),
            'devuelto' => Yii::t('backend', 'Devuelto'),
            'multa_pagada' => Yii::t('backend', 'Multa Pagada'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
