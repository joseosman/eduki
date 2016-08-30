<?php

use yii\helpers\Html;

/**
* @var yii\web\View $this
* @var backend\models\Estudiantes $model
*/

$this->title = Yii::t('backend', 'Create');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Estudiantes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giiant-crud estudiantes-create">

    <h1>
        <?= Yii::t('backend', 'Estudiantes') ?>        <small>
                        <?= $model->id ?>        </small>
    </h1>

    <div class="clearfix crud-navigation">
        <div class="pull-left">
            <?=             Html::a(
            Yii::t('backend', 'Cancel'),
            \yii\helpers\Url::previous(),
            ['class' => 'btn btn-default']) ?>
        </div>
    </div>

    <hr />

    <?= $this->render('_form', [
        'model' => $model,
        'estudiantesQuery' => $estudiantesQuery,
        'usersQuery' => $usersQuery,
        'modelsIdiomasEstudiantes' => $modelsIdiomasEstudiantes,
    ]); ?>

</div>
