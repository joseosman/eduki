<?php

namespace backend\controllers;

use backend\models\Departamentos;
use backend\models\Administrativos;

/**
* This is the class for controller "DepartamentosController".
*/
class DepartamentosController extends \backend\controllers\base\DepartamentosController
{

	/**
* Creates a new Departamentos model.
* If creation is successful, the browser will be redirected to the 'view' page.
* @return mixed
*/
public function actionCreate()
{
	$model = new Departamentos;
	$administrativosQuery = Administrativos::find()->orderBy('ap_pat, ap_mat, nombres')->all();

	try {
		if ($model->load($_POST)) {

            $model->save();

            return $this->redirect(['view', 'id' => $model->id]);

		} elseif (!\Yii::$app->request->isPost) {
			$model->load($_GET);
		}
	} catch (\Exception $e) {
		$msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
		$model->addError('_exception', $msg);
	}
	return $this->render('create', [
		'model' => $model,
		'administrativosQuery' => $administrativosQuery,
	]);
}

/**
* Updates an existing Departamentos model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param string $id
* @return mixed
*/
public function actionUpdate($id)
{
	$model = $this->findModel($id);
	$administrativosQuery = Administrativos::find()->orderBy('ap_pat, ap_mat, nombres')->all();

	if ($model->load($_POST)) {
		
		$model->save();

		return $this->redirect(['view', 'id' => $model->id]);
	} else {
		return $this->render('update', [
			'model' => $model,
			'administrativosQuery' => $administrativosQuery,
		]);
	}
}

}
