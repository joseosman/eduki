<?php

namespace backend\controllers;

use yii\web\UploadedFile;
use backend\models\User;
use backend\models\Administrativos;

/**
* This is the class for controller "AdministrativosController".
*/
class AdministrativosController extends \backend\controllers\base\AdministrativosController
{

/**
* Creates a new Administrativos model.
* If creation is successful, the browser will be redirected to the 'view' page.
* @return mixed
*/
public function actionCreate()
{
	$model = new Administrativos;
	$administrativosQuery = Administrativos::find()->orderBy('ap_pat, ap_mat, nombres')->all();
	$usersQuery = User::find()->orderBy('username')->all();

	try {
		if ($model->load($_POST)) {
        	if (!empty(UploadedFile::getInstance($model,'archivo'))) {
				//get the instance pf the uploaded file
				$model->archivo = UploadedFile::getInstance($model,'archivo');
				$nombrearchivo = str_replace(' ', '_', strtolower($model->fullnameinverted));
				$model->archivo->saveAs('administrativos/'.$nombrearchivo.'.'.$model->archivo->extension);
				
				//save the path in the DB column
				$model->ruta_foto = 'administrativos/'.$nombrearchivo.'.'.$model->archivo->extension;
			}

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
		'usersQuery' => $usersQuery,
	]);
}

/**
* Updates an existing Administrativos model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param string $id
* @return mixed
*/
public function actionUpdate($id)
{
	$model = $this->findModel($id);
	$administrativosQuery = Administrativos::find()->orderBy('ap_pat, ap_mat, nombres')->all();
	$usersQuery = User::find()->orderBy('username')->all();

	if ($model->load($_POST)) {
		//get the instance pf the uploaded file
		if (!empty(UploadedFile::getInstance($model,'archivo'))) {
			$model->archivo = UploadedFile::getInstance($model,'archivo');
			$nombrearchivo = str_replace(' ', '_', strtolower($model->fullnameinverted));
			$model->archivo->saveAs('administrativos/'.$nombrearchivo.'.'.$model->archivo->extension);
			
			//save the path in the DB column
			$model->ruta_foto = 'administrativos/'.$nombrearchivo.'.'.$model->archivo->extension;
		}
		
		$model->save();

		return $this->redirect(['view', 'id' => $model->id]);
	} else {
		return $this->render('update', [
			'model' => $model,
			'administrativosQuery' => $administrativosQuery,
			'usersQuery' => $usersQuery,
		]);
	}
}

}
