<?php

use yii\helpers\Html;

/**
* @var yii\web\View $this
* @var backend\models\Administrativos $model
*/

$this->title = Yii::t('backend', 'Create');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Administrativos'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giiant-crud administrativos-create">

    <h1>
        <?= Yii::t('backend', 'Administrativos') ?>        <small>
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
        'administrativosQuery' => $administrativosQuery,
        'usersQuery' => $usersQuery,
    ]); ?>

</div>
