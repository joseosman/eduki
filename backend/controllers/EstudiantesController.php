<?php

namespace backend\controllers;

use yii;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;
use yii\helpers\Url;
use backend\models\Model;
use backend\models\User;
use backend\models\Estudiantes;
use backend\models\IdiomasEstudiantes;

/**
* This is the class for controller "EstudiantesController".
*/
class EstudiantesController extends \backend\controllers\base\EstudiantesController
{

	/**
* Creates a new Estudiantes model.
* If creation is successful, the browser will be redirected to the 'view' page.
* @return mixed
*/
public function actionCreate()
{
	$model = new Estudiantes;
	$modelsIdiomasEstudiantes = [new IdiomasEstudiantes];
	$estudiantesQuery = Estudiantes::find()->orderBy('ap_pat, ap_mat, nombres')->all();
	$usersQuery = User::find()->orderBy('username')->all();

	try {
		if ($model->load($_POST)) {
			$modelsIdiomasEstudiantes = Model::createMultiple(IdiomasEstudiantes::classname());
            Model::loadMultiple($modelsIdiomasEstudiantes, Yii::$app->request->post());

            // validate all models
            $valid = $model->validate();
            $valid = Model::validateMultiple($modelsIdiomasEstudiantes) && $valid;

            if ($valid) {
                $transaction = \Yii::$app->db->beginTransaction();
                try {
                    if ($flag = $model->save(false)) {
                        foreach ($modelsIdiomasEstudiantes as $modelIdiomasEstudiantes) {
                            $modelIdiomasEstudiantes->estudiante_id = $model->id;
                            if (! ($flag = $modelIdiomasEstudiantes->save(false))) {
                                $transaction->rollBack();
                                break;
                            }
                        }
                    }
                    if ($flag) {
                    	if (!empty(UploadedFile::getInstance($model,'archivo'))) {
							//get the instance pf the uploaded file
							$model->archivo = UploadedFile::getInstance($model,'archivo');
							$nombrearchivo = str_replace(' ', '_', strtolower($model->fullnameinverted));
							$model->archivo->saveAs('estudiantes/'.$nombrearchivo.'.'.$model->archivo->extension);
							
							//save the path in the DB column
							$model->ruta_foto = 'estudiantes/'.$nombrearchivo.'.'.$model->archivo->extension;
							$model->save(false);
						}

                        $transaction->commit();

                        return $this->redirect(['view', 'id' => $model->id]);
                    }
                } catch (Exception $e) {
                    $transaction->rollBack();
                }
            }

		} elseif (!\Yii::$app->request->isPost) {
			$model->load($_GET);
		}
	} catch (\Exception $e) {
		$msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
		$model->addError('_exception', $msg);
	}
	return $this->render('create', [
		'model' => $model,
		'estudiantesQuery' => $estudiantesQuery,
		'usersQuery' => $usersQuery,
		'modelsIdiomasEstudiantes' => (empty($modelsIdiomasEstudiantes)) ? [new IdiomasEstudiantes] : $modelsIdiomasEstudiantes,
	]);
}

/**
* Updates an existing Estudiantes model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param string $id
* @return mixed
*/
public function actionUpdate($id)
{
	$model = $this->findModel($id);
	$modelsIdiomasEstudiantes = $model->idiomasEstudiantes;
	$estudiantesQuery = Estudiantes::find()->orderBy('ap_pat, ap_mat, nombres')->all();
	$usersQuery = User::find()->orderBy('username')->all();

	if ($model->load($_POST)) {

		$oldIDs = ArrayHelper::map($modelsIdiomasEstudiantes, 'id', 'id');
		$modelsIdiomasEstudiantes = Model::createMultiple(IdiomasEstudiantes::classname(), $modelsIdiomasEstudiantes);

		Model::loadMultiple($modelsIdiomasEstudiantes, Yii::$app->request->post());
		$deletedIDs = array_diff($oldIDs, array_filter(ArrayHelper::map($modelsIdiomasEstudiantes, 'id', 'id')));

		// validate all models
		$valid = $model->validate();
		$valid = Model::validateMultiple($modelsIdiomasEstudiantes) && $valid;

		if ($valid) {
			$transaction = \Yii::$app->db->beginTransaction();
			try {
				if ($flag = $model->save(false)) {
					if (! empty($deletedIDs)) {
						IdiomasEstudiantes::deleteAll(['id' => $deletedIDs]);
					}
					foreach ($modelsIdiomasEstudiantes as $modelIdiomasEstudiantes) {
						$modelIdiomasEstudiantes->estudiante_id = $model->id;
						if (! ($flag = $modelIdiomasEstudiantes->save(false))) {
							$transaction->rollBack();
							break;
						}
					}
				}
				if ($flag) {
					//get the instance pf the uploaded file
					if (!empty(UploadedFile::getInstance($model,'archivo'))) {
						$model->archivo = UploadedFile::getInstance($model,'archivo');
						$nombrearchivo = str_replace(' ', '_', strtolower($model->fullnameinverted));
						$model->archivo->saveAs('estudiantes/'.$nombrearchivo.'.'.$model->archivo->extension);
						
						//save the path in the DB column
						$model->ruta_foto = 'estudiantes/'.$nombrearchivo.'.'.$model->archivo->extension;
						$model->save(false);
					}
					
					$transaction->commit();

					return $this->redirect(['view', 'id' => $model->id]);
				}
			} catch (Exception $e) {
				$transaction->rollBack();
			}
		}

	} else {
		return $this->render('update', [
			'model' => $model,
			'estudiantesQuery' => $estudiantesQuery,
			'usersQuery' => $usersQuery,
			'modelsIdiomasEstudiantes' => (empty($modelsIdiomasEstudiantes)) ? [new IdiomasEstudiantes] : $modelsIdiomasEstudiantes
		]);
	}
}

}
