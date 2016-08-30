<?php

namespace backend\models;

use Yii;
use \backend\models\base\Cursos as BaseCursos;

/**
 * This is the model class for table "cursos".
 */
class Cursos extends BaseCursos
{

	/**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'nombre' => Yii::t('backend', 'Nombre'),
            'nombre_abr' => Yii::t('backend', 'Nombre Corto'),
            'ciclo_id' => Yii::t('backend', 'Ciclo'),
            'orden_correlativo' => Yii::t('backend', 'Orden Correlativo'),
            'created_at' => Yii::t('backend', 'Created At'),
            'created_by' => Yii::t('backend', 'Created By'),
            'updated_at' => Yii::t('backend', 'Updated At'),
            'updated_by' => Yii::t('backend', 'Updated By'),
            'deleted' => Yii::t('backend', 'Deleted'),
        ];
    }

}
