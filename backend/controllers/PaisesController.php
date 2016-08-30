<?php

namespace backend\controllers;

use Yii;
use yii\helpers\ArrayHelper;
use backend\models\Paises;
use backend\models\Estados;
use backend\models\Model;
use yii\helpers\Json;

/**
* This is the class for controller "PaisesController".
*/
class PaisesController extends \backend\controllers\base\PaisesController
{

/**
* Creates a new Menu model.
* If creation is successful, the browser will be redirected to the 'view' page.
* @return mixed
*/

public function actionEstados() {
    $out = [];
    if (isset($_POST['depdrop_parents'])) {
        $parents = $_POST['depdrop_parents'];
        if ($parents != null) {
            $pais_id = $parents[0];
            $out = Estados::find()
            				->select('id,nombre as name')
            				->where(['pais_id'=>$pais_id])
            				->orderBy(['name' => SORT_ASC])
            				->asArray()
            				->all(); 

            echo Json::encode(['output'=>$out, 'selected'=>'']);
            return;
        }
    }
    echo Json::encode(['output'=>'', 'selected'=>'']);
}

public function actionCreate()
{
	$model = new Paises;
	$modelsEstados = [new Estados];

	try {
		if ($model->load($_POST)) {
			//----------------------------------
			$modelsEstados = Model::createMultiple(Estados::classname());
            Model::loadMultiple($modelsEstados, Yii::$app->request->post());

            // validate all models
            $valid = $model->validate();
            $valid = Model::validateMultiple($modelsEstados) && $valid;

            if ($valid) {
                $transaction = \Yii::$app->db->beginTransaction();
                try {
                    if ($flag = $model->save(false)) {
                        foreach ($modelsEstados as $modelEstados) {
                            $modelEstados->pais_id = $model->id;
                            if (! ($flag = $modelEstados->save(false))) {
                                $transaction->rollBack();
                                break;
                            }
                        }
                    }
                    if ($flag) {
                        $transaction->commit();
                        return $this->redirect(['view', 'id' => $model->id]);
                    }
                } catch (Exception $e) {
                    $transaction->rollBack();
                }
            }

			//----------------------------------
		} elseif (!\Yii::$app->request->isPost) {
			$model->load($_GET);
		}
	} catch (\Exception $e) {
		$msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
		$model->addError('_exception', $msg);
	}
	return $this->render('create', [
					'model' => $model,
					'modelsEstados' => (empty($modelsEstados)) ? [new Estados] : $modelsEstados,
				]);
}

/**
* Updates an existing Menu model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param integer $id
* @return mixed
*/
public function actionUpdate($id)
{
	$model = $this->findModel($id);
	$modelsEstados = $model->estados;

	if ($model->load($_POST)) {
		//-----------------------------
		$oldIDs = ArrayHelper::map($modelsEstados, 'id', 'id');
		$modelsEstados = Model::createMultiple(Estados::classname(), $modelsEstados);
		Model::loadMultiple($modelsEstados, Yii::$app->request->post());
		$deletedIDs = array_diff($oldIDs, array_filter(ArrayHelper::map($modelsEstados, 'id', 'id')));

		// validate all models
		$valid = $model->validate();
		$valid = Model::validateMultiple($modelsEstados) && $valid;

		if ($valid) {
			$transaction = \Yii::$app->db->beginTransaction();
			try {
				if ($flag = $model->save(false)) {
					if (! empty($deletedIDs)) {
						Estados::deleteAll(['id' => $deletedIDs]);
					}
					foreach ($modelsEstados as $modelEstados) {
						$modelEstados->pais_id = $model->id;
						if (! ($flag = $modelEstados->save(false))) {
							$transaction->rollBack();
							break;
						}
					}
				}
				if ($flag) {
					$transaction->commit();
					return $this->redirect(['view', 'id' => $model->id]);
				}
			} catch (Exception $e) {
				$transaction->rollBack();
			}
		}
		//-----------------------------
	} else {
		return $this->render('update', [
			'model' => $model,
			'modelsEstados' => (empty($modelsEstados)) ? [new Estados] : $modelsEstados
		]);
	}
}

}
