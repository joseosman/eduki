<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
* @var yii\web\View $this
* @var backend\models\ProfesoresSearch $model
* @var yii\widgets\ActiveForm $form
*/
?>

<div class="profesores-search">

    <?php $form = ActiveForm::begin([
    'action' => ['index'],
    'method' => 'get',
    ]); ?>

    		<?= $form->field($model, 'id') ?>

		<?= $form->field($model, 'nombres') ?>

		<?= $form->field($model, 'ap_pat') ?>

		<?= $form->field($model, 'ap_mat') ?>

		<?= $form->field($model, 'fec_nac') ?>

		<?php // echo $form->field($model, 'sex') ?>

		<?php // echo $form->field($model, 'ruta_foto') ?>

		<?php // echo $form->field($model, 'pais_id') ?>

		<?php // echo $form->field($model, 'estado_id') ?>

		<?php // echo $form->field($model, 'tipo_sangre') ?>

		<?php // echo $form->field($model, 'email') ?>

		<?php // echo $form->field($model, 'tel_fijo') ?>

		<?php // echo $form->field($model, 'tel_movil') ?>

		<?php // echo $form->field($model, 'tel_emergencia') ?>

		<?php // echo $form->field($model, 'contacto_emergencia') ?>

		<?php // echo $form->field($model, 'user_id') ?>

		<?php // echo $form->field($model, 'tipo_doc_id') ?>

		<?php // echo $form->field($model, 'num_doc_id') ?>

		<?php // echo $form->field($model, 'direc') ?>

		<?php // echo $form->field($model, 'fec_ini') ?>

		<?php // echo $form->field($model, 'email_trabajo') ?>

		<?php // echo $form->field($model, 'tel_fijo_trabajo') ?>

		<?php // echo $form->field($model, 'tel_movil_trabajo') ?>

		<?php // echo $form->field($model, 'aula_oficina') ?>

		<?php // echo $form->field($model, 'nombre_afp') ?>

		<?php // echo $form->field($model, 'num_de_afp') ?>

		<?php // echo $form->field($model, 'active') ?>

		<?php // echo $form->field($model, 'created_at') ?>

		<?php // echo $form->field($model, 'created_by') ?>

		<?php // echo $form->field($model, 'updated_at') ?>

		<?php // echo $form->field($model, 'updated_by') ?>

		<?php // echo $form->field($model, 'deleted') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('backend', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('backend', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
