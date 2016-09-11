<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\DatosGenerales;

/**
* DatosGeneralesSearch represents the model behind the search form about `backend\models\DatosGenerales`.
*/
class DatosGeneralesSearch extends DatosGenerales
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'created_at', 'created_by', 'updated_at', 'updated_by', 'deleted'], 'integer'],
            [['nombre', 'descripcion', 'direc', 'tel_fijo', 'email_contacto'], 'safe'],
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
$query = DatosGenerales::find();

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

        $query->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'descripcion', $this->descripcion])
            ->andFilterWhere(['like', 'direc', $this->direc])
            ->andFilterWhere(['like', 'tel_fijo', $this->tel_fijo])
            ->andFilterWhere(['like', 'email_contacto', $this->email_contacto]);

return $dataProvider;
}
}