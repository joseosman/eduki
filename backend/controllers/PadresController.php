<?php

namespace backend\controllers;

use yii;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;
use yii\helpers\Url;
use backend\models\Model;
use backend\models\User;
use backend\models\Padres;
use backend\models\Hijos;

/**
* This is the class for controller "PadresController".
*/
class PadresController extends \backend\controllers\base\PadresController
{

/**
* Creates a new Padres model.
* If creation is successful, the browser will be redirected to the 'view' page.
* @return mixed
*/
public function actionCreate()
{
	$model = new Padres;
	$modelsHijos = [new Hijos];
	$padresQuery = Padres::find()->orderBy('ap_pat, ap_mat, nombres')->all();
	$usersQuery = User::find()->orderBy('username')->all();

	try {
		if ($model->load($_POST)) {
			$modelsHijos = Model::createMultiple(Hijos::classname());
            Model::loadMultiple($modelsHijos, Yii::$app->request->post());

            // validate all models
            $valid = $model->validate();
            $valid = Model::validateMultiple($modelsHijos) && $valid;

            if ($valid) {
                $transaction = \Yii::$app->db->beginTransaction();
                try {
                    if ($flag = $model->save(false)) {
                        foreach ($modelsHijos as $modelHijos) {
                            $modelHijos->padre_id = $model->id;
                            if (! ($flag = $modelHijos->save(false))) {
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
							$model->archivo->saveAs('padres/'.$nombrearchivo.'.'.$model->archivo->extension);
							
							//save the path in the DB column
							$model->ruta_foto = 'padres/'.$nombrearchivo.'.'.$model->archivo->extension;
							$model->save(false);
						}

						if (!empty($model->conyuge_id)) {
							$modelConyuge = $this->findModel($model->conyuge_id);
						}

                        $transaction->commit();

                        if (!empty($modelConyuge)) {
                        	if (empty($modelConyuge->conyuge_id)) {
			                    $modelConyuge->conyuge_id = $model->id;
								$modelConyuge->save();
							}
                        }

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
		'padresQuery' => $padresQuery,
		'usersQuery' => $usersQuery,
		'modelsHijos' => (empty($modelsHijos)) ? [new Hijos] : $modelsHijos,
	]);
}

/**
* Updates an existing Padres model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param string $id
* @return mixed
*/
public function actionUpdate($id)
{
	$model = $this->findModel($id);
	$modelsHijos = $model->hijos;
	$padresQuery = Padres::find()->orderBy('ap_pat, ap_mat, nombres')->all();
	$usersQuery = User::find()->orderBy('username')->all();

	if ($model->load($_POST)) {
		
		$oldIDs = ArrayHelper::map($modelsHijos, 'id', 'id');
		$modelsHijos = Model::createMultiple(Hijos::classname(), $modelsHijos);
		Model::loadMultiple($modelsHijos, Yii::$app->request->post());
		$deletedIDs = array_diff($oldIDs, array_filter(ArrayHelper::map($modelsHijos, 'id', 'id')));

		// validate all models
		$valid = $model->validate();
		$valid = Model::validateMultiple($modelsHijos) && $valid;

		if ($valid) {
			$transaction = \Yii::$app->db->beginTransaction();
			try {
				if ($flag = $model->save(false)) {
					if (! empty($deletedIDs)) {
						Hijos::deleteAll(['id' => $deletedIDs]);
					}
					foreach ($modelsHijos as $modelHijos) {
						$modelHijos->padre_id = $model->id;
						if (! ($flag = $modelHijos->save(false))) {
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
						$model->archivo->saveAs('padres/'.$nombrearchivo.'.'.$model->archivo->extension);
						
						//save the path in the DB column
						$model->ruta_foto = 'padres/'.$nombrearchivo.'.'.$model->archivo->extension;
						$model->save(false);
					}
					
					if (!empty($model->conyuge_id)) {
						$modelConyuge = $this->findModel($model->conyuge_id);
					}

					$transaction->commit();

					if (!empty($modelConyuge)) {
						if (empty($modelConyuge->conyuge_id)) {
							$modelConyuge->conyuge_id = $model->id;
							$modelConyuge->save();
						}
					}

					return $this->redirect(['view', 'id' => $model->id]);
				}
			} catch (Exception $e) {
				$transaction->rollBack();
			}
		}

	} else {
		return $this->render('update', [
			'model' => $model,
			'padresQuery' => $padresQuery,
			'usersQuery' => $usersQuery,
			'modelsHijos' => (empty($modelsHijos)) ? [new Hijos] : $modelsHijos
		]);
	}
}

}
