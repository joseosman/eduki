<?php

use yii\helpers\Html;

/**
* @var yii\web\View $this
* @var backend\models\Departamentos $model
*/

$this->title = Yii::t('backend', 'Departamentos') . $model->id . ', ' . Yii::t('backend', 'Edit');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Departamentos'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Edit');
?>
<div class="giiant-crud departamentos-update">

    <h1>
        <?= Yii::t('backend', 'Departamentos') ?>
        <small>
                        <?= $model->id ?>        </small>
    </h1>

    <div class="crud-navigation">
        <?= Html::a('<span class="glyphicon glyphicon-eye-open"></span> ' . Yii::t('backend', 'View'), ['view', 'id' => $model->id], ['class' => 'btn btn-default']) ?>
    </div>

    <hr />

    <?php echo $this->render('_form', [
        'model' => $model,
        'administrativosQuery' => $administrativosQuery,
    ]); ?>

</div>
