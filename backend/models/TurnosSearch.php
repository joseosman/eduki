<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Turnos;

/**
* TurnosSearch represents the model behind the search form about `backend\models\Turnos`.
*/
class TurnosSearch extends Turnos
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'created_at', 'created_by', 'updated_at', 'updated_by', 'deleted'], 'integer'],
            [['nombre'], 'safe'],
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
$query = Turnos::find();

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
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
            'deleted' => $this->deleted,
        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre]);

return $dataProvider;
}
}