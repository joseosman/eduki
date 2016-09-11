<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Semanas;

/**
* SemanasSearch represents the model behind the search form about `backend\models\Semanas`.
*/
class SemanasSearch extends Semanas
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'numero', 'created_at', 'created_by', 'updated_at', 'updated_by', 'deleted'], 'integer'],
            [['fecha_ini', 'fecha_fin'], 'safe'],
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
$query = Semanas::find();

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
            'numero' => $this->numero,
            'fecha_ini' => $this->fecha_ini,
            'fecha_fin' => $this->fecha_fin,
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
            'deleted' => $this->deleted,
        ]);

return $dataProvider;
}
}