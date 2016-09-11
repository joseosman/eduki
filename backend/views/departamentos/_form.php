<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\StringHelper;

use yii\helpers\ArrayHelper;
use \kartik\select2\Select2;

/**
* @var yii\web\View $this
* @var backend\models\Departamentos $model
* @var yii\widgets\ActiveForm $form
*/

?>

<div class="departamentos-form">

    <?php $form = ActiveForm::begin([
    'id' => 'Departamentos',
    'layout' => 'horizontal',
    'enableClientValidation' => true,
    'errorSummaryCssClass' => 'error-summary alert alert-error'
    ]
    );
    ?>

    <div class="">
        <?php $this->beginBlock('main'); ?>

        <p>
            
			<?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>
			<?= $form->field($model, 'descripcion')->textInput(['maxlength' => true]) ?>
            <?php
                echo $form->field($model, 'jefe_admin_id')->widget(Select2::classname(), [
                    'name' => 'jefe_admin_id',
                    'data' => ArrayHelper::map($administrativosQuery, 'id', 'fullnameinverted'),
                    'options' => ['placeholder' => Yii::t('backend', 'Select')],
                    'pluginOptions' => [
                        'allowClear' => true,
                    ],
                ]);
            ?>
        </p>
        <?php $this->endBlock(); ?>
        
        <?=
    Tabs::widget(
                 [
                   'encodeLabels' => false,
                     'items' => [ [
    'label'   => Yii::t('backend', StringHelper::basename('backend\models\Departamentos')),
    'content' => $this->blocks['main'],
    'active'  => true,
], ]
                 ]
    );
    ?>
        <hr/>

        <?php echo $form->errorSummary($model); ?>

        <?= Html::submitButton(
        '<span class="glyphicon glyphicon-check"></span> ' .
        ($model->isNewRecord ? Yii::t('backend', 'Create') : Yii::t('backend', 'Save')),
        [
        'id' => 'save-' . $model->formName(),
        'class' => 'btn btn-success'
        ]
        );
        ?>

        <?php ActiveForm::end(); ?>

    </div>

</div>

