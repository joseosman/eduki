<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Actividades;

/**
* ActividadesSearch represents the model behind the search form about `backend\models\Actividades`.
*/
class ActividadesSearch extends Actividades
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'ciclo_id', 'turno_id', 'curso_id', 'materia_id', 'profesor_id', 'tipo_id', 'bimestre_id', 'puntaje_max', 'created_at', 'created_by', 'updated_at', 'updated_by', 'deleted'], 'integer'],
            [['nombre', 'desc', 'fecha'], 'safe'],
];
}

/**
* @inheritdoc
*/
public function scenarios()
{
// bypass scenarios() implementation in the parent class
return Model::scenarios();
}

/**
* Creates data provider instance with search query applied
*
* @param array $params
*
* @return ActiveDataProvider
*/
public function search($params)
{
$query = Actividades::find();

$dataProvider = new ActiveDataProvider([
'query' => $query,
]);

$this->load($params);

if (!$this->validate()) {
// uncomment the following line if you do not want to any records when validation fails
// $query->where('0=1');
return $dataProvider;
}

$query->andFilterWhere([
            'id' => $this->id,
            'ciclo_id' => $this->ciclo_id,
            'turno_id' => $this->turno_id,
            'curso_id' => $this->curso_id,
            'materia_id' => $this->materia_id,
            'profesor_id' => $this->profesor_id,
            'tipo_id' => $this->tipo_id,
            'bimestre_id' => $this->bimestre_id,
            'fecha' => $this->fecha,
            'puntaje_max' => $this->puntaje_max,
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
            'deleted' => $this->deleted,
        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'desc', $this->desc]);

return $dataProvider;
}
}