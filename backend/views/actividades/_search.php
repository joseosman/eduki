<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
* @var yii\web\View $this
* @var backend\models\ActividadesSearch $model
* @var yii\widgets\ActiveForm $form
*/
?>

<div class="actividades-search">

    <?php $form = ActiveForm::begin([
    'action' => ['index'],
    'method' => 'get',
    ]); ?>

    		<?= $form->field($model, 'id') ?>

		<?= $form->field($model, 'nombre') ?>

		<?= $form->field($model, 'desc') ?>

		<?= $form->field($model, 'ciclo_id') ?>

		<?= $form->field($model, 'turno_id') ?>

		<?php // echo $form->field($model, 'curso_id') ?>

		<?php // echo $form->field($model, 'materia_id') ?>

		<?php // echo $form->field($model, 'profesor_id') ?>

		<?php // echo $form->field($model, 'tipo_id') ?>

		<?php // echo $form->field($model, 'bimestre_id') ?>

		<?php // echo $form->field($model, 'fecha') ?>

		<?php // echo $form->field($model, 'puntaje_max') ?>

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
