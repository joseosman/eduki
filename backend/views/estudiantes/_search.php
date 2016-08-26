<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
* @var yii\web\View $this
* @var backend\models\EstudiantesSearch $model
* @var yii\widgets\ActiveForm $form
*/
?>

<div class="estudiantes-search">

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

		<?php // echo $form->field($model, 'direcc') ?>

		<?php // echo $form->field($model, 'fec_insc') ?>

		<?php // echo $form->field($model, 'religion_id') ?>

		<?php // echo $form->field($model, 'rude') ?>

		<?php // echo $form->field($model, 'curso_id') ?>

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
