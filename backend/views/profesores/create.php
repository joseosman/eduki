<?php

use yii\helpers\Html;

/**
* @var yii\web\View $this
* @var backend\models\Profesores $model
*/

$this->title = Yii::t('backend', 'Create');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Profesores'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giiant-crud profesores-create">

    <h1>
        <?= Yii::t('backend', 'Profesores') ?>        <small>
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
        'profesoresQuery' => $profesoresQuery,
        'usersQuery' => $usersQuery,
    ]); ?>

</div>
