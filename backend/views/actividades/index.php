<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;

/**
* @var yii\web\View $this
* @var yii\data\ActiveDataProvider $dataProvider
    * @var backend\models\ActividadesSearch $searchModel
*/


if (isset($actionColumnTemplates)) {
$actionColumnTemplate = implode(' ', $actionColumnTemplates);
    $actionColumnTemplateString = $actionColumnTemplate;
} else {
Yii::$app->view->params['pageButtons'] = Html::a('<span class="glyphicon glyphicon-plus"></span> ' . Yii::t('backend', 'New'), ['create'], ['class' => 'btn btn-success']);
    $actionColumnTemplateString = "{view} {update} {delete}";
}
?>
<div class="giiant-crud actividades-index">

    <?php //             echo $this->render('_search', ['model' =>$searchModel]);
        ?>

    
    <?php \yii\widgets\Pjax::begin(['id'=>'pjax-main', 'enableReplaceState'=> false, 'linkSelector'=>'#pjax-main ul.pagination a, th a', 'clientOptions' => ['pjax:success'=>'function(){alert("yo")}']]) ?>

    <h1>
        <?= Yii::t('backend', 'Actividades') ?>        <small>
            List
        </small>
    </h1>
    <div class="clearfix crud-navigation">
        <div class="pull-left">
            <?= Html::a('<span class="glyphicon glyphicon-plus"></span> ' . Yii::t('backend', 'New'), ['create'], ['class' => 'btn btn-success']) ?>
        </div>

        <div class="pull-right">

                                                                                                                                                                                                                                                                                    
            <?= 
            \yii\bootstrap\ButtonDropdown::widget(
            [
            'id' => 'giiant-relations',
            'encodeLabel' => false,
            'label' => '<span class="glyphicon glyphicon-paperclip"></span> ' . Yii::t('backend', 'Relations'),
            'dropdown' => [
            'options' => [
            'class' => 'dropdown-menu-right'
            ],
            'encodeLabels' => false,
            'items' => [            [
                'url' => ['bimestres/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Bimestres') . '</i>',
            ],            [
                'url' => ['ciclos/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Ciclos') . '</i>',
            ],            [
                'url' => ['turnos/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Turnos') . '</i>',
            ],            [
                'url' => ['cursos/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Cursos') . '</i>',
            ],            [
                'url' => ['materias/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Materias') . '</i>',
            ],            [
                'url' => ['profesores/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Profesores') . '</i>',
            ],            [
                'url' => ['tipo-actividades/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Tipo Actividades') . '</i>',
            ],            [
                'url' => ['adjuntos-actividades/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Adjuntos Actividades') . '</i>',
            ],            [
                'url' => ['estudiantes-actividades/index'],
                'label' => '<i class="glyphicon glyphicon-arrow-right">&nbsp;' . Yii::t('backend', 'Estudiantes Actividades') . '</i>',
            ],]
            ],
            'options' => [
            'class' => 'btn-default'
            ]
            ]
            );
            ?>        </div>
    </div>

    <hr />

    <div class="table-responsive">
        <?= GridView::widget([
        'layout' => '{summary}{pager}{items}{pager}',
        'dataProvider' => $dataProvider,
        'pager' => [
        'class' => yii\widgets\LinkPager::className(),
        'firstPageLabel' => Yii::t('backend', 'First'),
        'lastPageLabel' => Yii::t('backend', 'Last')        ],
                    'filterModel' => $searchModel,
                'tableOptions' => ['class' => 'table table-striped table-bordered table-hover'],
        'headerRowOptions' => ['class'=>'x'],
        'columns' => [

                [
            'class' => 'yii\grid\ActionColumn',
            'template' => $actionColumnTemplateString,
            'urlCreator' => function($action, $model, $key, $index) {
                // using the column name as key, not mapping to 'id' like the standard generator
                $params = is_array($key) ? $key : [$model->primaryKey()[0] => (string) $key];
                $params[0] = \Yii::$app->controller->id ? \Yii::$app->controller->id . '/' . $action : $action;
                return Url::toRoute($params);
            },
            'contentOptions' => ['nowrap'=>'nowrap']
        ],
			'nombre',
			// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'ciclo_id',
			    'value' => function ($model) {
			        if ($rel = $model->getCiclo()->one()) {
			            return Html::a($rel->id, ['ciclos/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],
			// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'turno_id',
			    'value' => function ($model) {
			        if ($rel = $model->getTurno()->one()) {
			            return Html::a($rel->id, ['turnos/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],
			// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'curso_id',
			    'value' => function ($model) {
			        if ($rel = $model->getCurso()->one()) {
			            return Html::a($rel->id, ['cursos/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],
			// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'materia_id',
			    'value' => function ($model) {
			        if ($rel = $model->getMateria()->one()) {
			            return Html::a($rel->id, ['materias/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],
			// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'profesor_id',
			    'value' => function ($model) {
			        if ($rel = $model->getProfesor()->one()) {
			            return Html::a($rel->id, ['profesores/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],
			// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'tipo_id',
			    'value' => function ($model) {
			        if ($rel = $model->getTipo()->one()) {
			            return Html::a($rel->id, ['tipo-actividades/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],
			/*// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::columnFormat
			[
			    'class' => yii\grid\DataColumn::className(),
			    'attribute' => 'bimestre_id',
			    'value' => function ($model) {
			        if ($rel = $model->getBimestre()->one()) {
			            return Html::a($rel->id, ['bimestres/view', 'id' => $rel->id,], ['data-pjax' => 0]);
			        } else {
			            return '';
			        }
			    },
			    'format' => 'raw',
			],*/
			/*'fecha',*/
			/*'puntaje_max',*/
			/*'deleted',*/
			/*'desc',*/
        ],
        ]); ?>
    </div>

</div>


<?php \yii\widgets\Pjax::end() ?>


