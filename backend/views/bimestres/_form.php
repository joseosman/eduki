<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\StringHelper;

use kartik\date\DatePicker;

/**
* @var yii\web\View $this
* @var backend\models\Bimestres $model
* @var yii\widgets\ActiveForm $form
*/

?>

<div class="bimestres-form">

    <?php $form = ActiveForm::begin([
    'id' => 'Bimestres',
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
            <?= 
                $form->field($model, 'mes_ini')->dropDownList([
                            '1'=>Yii::t('backend', 'Enero'), 
                            '2'=>Yii::t('backend', 'Febrero'), 
                            '3'=>Yii::t('backend', 'Marzo'), 
                            '4'=>Yii::t('backend', 'Abril'), 
                            '5'=>Yii::t('backend', 'Mayo'), 
                            '6'=>Yii::t('backend', 'Junio'), 
                            '7'=>Yii::t('backend', 'Julio'), 
                            '8'=>Yii::t('backend', 'Agosto'), 
                            '9'=>Yii::t('backend', 'Septiembre'), 
                            '10'=>Yii::t('backend', 'Octubre'), 
                            '11'=>Yii::t('backend', 'Noviembre'), 
                            '12'=>Yii::t('backend', 'Diciembre'), 
                        ],
                    ['prompt' => Yii::t('backend', 'Select')]
                ); 
            ?>
            <?= 
                $form->field($model, 'mes_fin')->dropDownList([
                            '1'=>Yii::t('backend', 'Enero'), 
                            '2'=>Yii::t('backend', 'Febrero'), 
                            '3'=>Yii::t('backend', 'Marzo'), 
                            '4'=>Yii::t('backend', 'Abril'), 
                            '5'=>Yii::t('backend', 'Mayo'), 
                            '6'=>Yii::t('backend', 'Junio'), 
                            '7'=>Yii::t('backend', 'Julio'), 
                            '8'=>Yii::t('backend', 'Agosto'), 
                            '9'=>Yii::t('backend', 'Septiembre'), 
                            '10'=>Yii::t('backend', 'Octubre'), 
                            '11'=>Yii::t('backend', 'Noviembre'), 
                            '12'=>Yii::t('backend', 'Diciembre'), 
                        ],
                    ['prompt' => Yii::t('backend', 'Select')]
                ); 
            ?>
			
			<?= $form->field($model, 'active')->checkbox() ?>
			<?= $form->field($model, 'editable')->checkbox() ?>
        </p>
        <?php $this->endBlock(); ?>
        
        <?=
    Tabs::widget(
                 [
                   'encodeLabels' => false,
                     'items' => [ [
    'label'   => Yii::t('backend', StringHelper::basename('backend\models\Bimestres')),
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

