<?php

namespace backend\models;

use Yii;
use \backend\models\base\Estudiantes as BaseEstudiantes;

/**
 * This is the model class for table "estudiantes".
 */
class Estudiantes extends BaseEstudiantes
{
	
	public function getNombreCompleto()
	{
	  return $this->nombres . " " . $this->ap_pat . " " . $this->ap_mat;

	}
	
}
