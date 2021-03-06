<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\models\base;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the base-model class for table "libros".
 *
 * @property string $id
 * @property string $ISBN
 * @property string $titulo
 * @property string $subtitulo
 * @property string $autor
 * @property string $edicion
 * @property integer $ano_edicion
 * @property integer $ano_publicacion
 * @property integer $num_copias
 * @property string $editorial
 * @property string $pdf_link
 * @property string $precio
 * @property integer $categoria_id
 * @property string $ubicacion
 * @property integer $num_paginas
 * @property string $notas
 * @property string $ruta_portada
 * @property string $codigo_barras
 * @property integer $deleted
 * @property integer $created_at
 * @property integer $created_by
 * @property integer $updated_at
 * @property integer $updated_by
 *
 * @property \backend\models\LibrosCategoria $categoria
 * @property \backend\models\LibrosPrestamos[] $librosPrestamos
 * @property string $aliasModel
 */
abstract class Libros extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'libros';
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
            [['titulo', 'autor', 'categoria_id'], 'required'],
            [['ano_edicion', 'ano_publicacion', 'num_copias', 'categoria_id', 'num_paginas', 'deleted'], 'integer'],
            [['precio'], 'number'],
            [['ISBN', 'titulo', 'subtitulo', 'autor', 'editorial', 'codigo_barras'], 'string', 'max' => 100],
            [['edicion'], 'string', 'max' => 20],
            [['pdf_link', 'notas'], 'string', 'max' => 300],
            [['ubicacion'], 'string', 'max' => 150],
            [['ruta_portada'], 'string', 'max' => 2000],
            [['categoria_id'], 'exist', 'skipOnError' => true, 'targetClass' => LibrosCategoria::className(), 'targetAttribute' => ['categoria_id' => 'id']]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('backend', 'ID'),
            'ISBN' => Yii::t('backend', 'Isbn'),
            'titulo' => Yii::t('backend', 'Titulo'),
            'subtitulo' => Yii::t('backend', 'Subtitulo'),
            'autor' => Yii::t('backend', 'Autor'),
            'edicion' => Yii::t('backend', 'Edicion'),
            'ano_edicion' => Yii::t('backend', 'Ano Edicion'),
            'ano_publicacion' => Yii::t('backend', 'Ano Publicacion'),
            'num_copias' => Yii::t('backend', 'Num Copias'),
            'editorial' => Yii::t('backend', 'Editorial'),
            'pdf_link' => Yii::t('backend', 'Pdf Link'),
            'precio' => Yii::t('backend', 'Precio'),
            'categoria_id' => Yii::t('backend', 'Categoria ID'),
            'ubicacion' => Yii::t('backend', 'Ubicacion'),
            'num_paginas' => Yii::t('backend', 'Num Paginas'),
            'notas' => Yii::t('backend', 'Notas'),
            'ruta_portada' => Yii::t('backend', 'Ruta Portada'),
            'codigo_barras' => Yii::t('backend', 'Codigo Barras'),
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
    public function getCategoria()
    {
        return $this->hasOne(\backend\models\LibrosCategoria::className(), ['id' => 'categoria_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLibrosPrestamos()
    {
        return $this->hasMany(\backend\models\LibrosPrestamos::className(), ['libro_id' => 'id']);
    }




}
