<?php

use yii\helpers\Html;

/**
* @var yii\web\View $this
* @var backend\models\Estudiantes $model
*/

$this->title = Yii::t('backend', 'Estudiantes') . $model->id . ', ' . Yii::t('backend', 'Edit');
$this->params['breadcrumbs'][] = ['label' => Yii::t('backend', 'Estudiantes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('backend', 'Edit');
?>
<div class="giiant-crud estudiantes-update">

    <h1>
        <?= Yii::t('backend', 'Estudiantes') ?>
        <small>
                        <?= $model->id ?>        </small>
    </h1>

    <div class="crud-navigation">
        <?= Html::a('<span class="glyphicon glyphicon-eye-open"></span> ' . Yii::t('backend', 'View'), ['view', 'id' => $model->id], ['class' => 'btn btn-default']) ?>
    </div>

    <hr />

    <?php echo $this->render('_form', [
        'model' => $model,
        'estudiantesQuery' => $estudiantesQuery,
        'usersQuery' => $usersQuery,
        'modelsIdiomasEstudiantes' => $modelsIdiomasEstudiantes,
    ]); ?>

</div>
