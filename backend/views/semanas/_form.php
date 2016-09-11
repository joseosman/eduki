<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\StringHelper;

use kartik\date\DatePicker;

/**
* @var yii\web\View $this
* @var backend\models\Semanas $model
* @var yii\widgets\ActiveForm $form
*/

?>

<div class="semanas-form">

    <?php $form = ActiveForm::begin([
    'id' => 'Semanas',
    'layout' => 'horizontal',
    'enableClientValidation' => true,
    'errorSummaryCssClass' => 'error-summary alert alert-error'
    ]
    );
    ?>

    <div class="">
        <?php $this->beginBlock('main'); ?>

        <p>
            
			<?= $form->field($model, 'numero')->textInput() ?>
            <?= 
                $form->field($model, 'fecha_ini')->widget(DatePicker::classname(), [
                    'options' => ['placeholder' => Yii::t('backend', 'Ingrese una Fecha')],
                    'pluginOptions' => [
                        'calendarWeeks' => true,
                        'format' => 'yyyy-mm-dd',
                        'autoclose'=>true
                    ]
                ]); 
            ?>
            <?= 
                $form->field($model, 'fecha_fin')->widget(DatePicker::classname(), [
                    'options' => ['placeholder' => Yii::t('backend', 'Ingrese una Fecha')],
                    'pluginOptions' => [
                        'calendarWeeks' => true,
                        'format' => 'yyyy-mm-dd',
                        'autoclose'=>true
                    ]
                ]); 
            ?>

            <?= $form->field($model, 'active')->checkbox() ?>
        </p>
        <?php $this->endBlock(); ?>
        
        <?=
    Tabs::widget(
                 [
                   'encodeLabels' => false,
                     'items' => [ [
    'label'   => Yii::t('backend', StringHelper::basename('backend\models\Semanas')),
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

