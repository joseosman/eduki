<?php

use yii\helpers\Html;

/**
* @var yii\web\View $this
* @var backend\models\Choferes $model
*/

$this->title = Yii::t('backend', 'Create');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Choferes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giiant-crud choferes-create">

    <h1>
        <?= Yii::t('backend', 'Choferes') ?>        <small>
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
        'choferesQuery' => $choferesQuery,
        'usersQuery' => $usersQuery,
    ]); ?>

</div>
