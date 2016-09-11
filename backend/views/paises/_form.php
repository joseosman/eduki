<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \dmstr\bootstrap\Tabs;
use yii\helpers\StringHelper;
use wbraganca\dynamicform\DynamicFormWidget;
use backend\models\Estados;
/**
* @var yii\web\View $this
* @var backend\models\Paises $model
* @var yii\widgets\ActiveForm $form
*/
?>

<div class="paises-form">

    <?php $form = ActiveForm::begin([
    'id' => 'dynamic-form',
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
            <?= $form->field($model, 'nombre_corto')->textInput(['maxlength' => true]) ?>
            <?= $form->field($model, 'nacionalidad')->textInput(['maxlength' => true]) ?>
            
        </p>
        <?php $this->endBlock(); ?>

        <?php $this->beginBlock('Estados'); ?>
        <p>
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-heading"><h4><i class="glyphicon glyphicon-envelope"></i> Lista de Estados</h4></div>
                    <div class="panel-body">
                         <?php DynamicFormWidget::begin([
                            'widgetContainer' => 'dynamicform_wrapper', // required: only alphanumeric characters plus "_" [A-Za-z0-9_]
                            'widgetBody' => '.container-items', // required: css class selector
                            'widgetItem' => '.item', // required: css class
                            'limit' => 10, // the maximum times, an element can be cloned (default 999)
                            'min' => 1, // 0 or 1 (default 1)
                            'insertButton' => '.add-item', // css class
                            'deleteButton' => '.remove-item', // css class
                            'model' => $modelsEstados[0],
                            'formId' => 'dynamic-form',
                            'formFields' => [
                                'nombre',
                            ],
                        ]); ?>

                        <div class="container-items"><!-- widgetContainer -->
                        <?php foreach ($modelsEstados as $i => $modelEstados): ?>
                            <div class="item panel panel-default"><!-- widgetBody -->
                                <div class="panel-heading">
                                    <h3 class="panel-title pull-left">Estado</h3>
                                    <div class="pull-right">
                                        <button type="button" class="add-item btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i></button>
                                        <button type="button" class="remove-item btn btn-danger btn-xs"><i class="glyphicon glyphicon-minus"></i></button>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="panel-body">
                                    <?php
                                        // necessary for update action.
                                        if (! $modelEstados->isNewRecord) {
                                            echo Html::activeHiddenInput($modelEstados, "[{$i}]id");
                                        }
                                    ?>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <?= $form->field($modelEstados, "[{$i}]nombre")->textInput(['maxlength' => true]) ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                        </div>
                        <?php DynamicFormWidget::end(); ?>
                    </div>
                </div>
            </div>
        </p>
        <?php $this->endBlock(); ?>

        <?=
    Tabs::widget(
                 [
                   'encodeLabels' => false,
                     'items' => [ [
    'label'   => Yii::t('backend', StringHelper::basename('backend\models\Paises')),
    'content' => $this->blocks['main'],
    'active'  => true,
],[
    'content' => $this->blocks['Estados'],
    'label'   => Yii::t('backend', StringHelper::basename('backend\models\Estados')),
    'active'  => false,
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