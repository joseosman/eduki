<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Padres;

/**
* PadresSearch represents the model behind the search form about `backend\models\Padres`.
*/
class PadresSearch extends Padres
{
/**
* @inheritdoc
*/
public function rules()
{
return [
[['id', 'pais_id', 'estado_id', 'user_id', 'tipo_doc_id', 'conyuge_id', 'active', 'created_at', 'created_by', 'updated_at', 'updated_by', 'deleted'], 'integer'],
            [['nombres', 'ap_pat', 'ap_mat', 'fec_nac', 'sex', 'ruta_foto', 'tipo_sangre', 'email', 'tel_fijo', 'tel_movil', 'tel_emergencia', 'contacto_emergencia', 'num_doc_id', 'direc', 'email_trabajo', 'tel_fijo_trabajo', 'tel_movil_trabajo', 'profesion', 'nit', 'razon_social'], 'safe'],
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
$query = Padres::find();

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
            'fec_nac' => $this->fec_nac,
            'pais_id' => $this->pais_id,
            'estado_id' => $this->estado_id,
            'user_id' => $this->user_id,
            'tipo_doc_id' => $this->tipo_doc_id,
            'active' => $this->active,
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
            'deleted' => $this->deleted,
        ]);

        $query->andFilterWhere(['like', 'nombres', $this->nombres])
            ->andFilterWhere(['like', 'ap_pat', $this->ap_pat])
            ->andFilterWhere(['like', 'ap_mat', $this->ap_mat])
            ->andFilterWhere(['like', 'sex', $this->sex])
            ->andFilterWhere(['like', 'ruta_foto', $this->ruta_foto])
            ->andFilterWhere(['like', 'tipo_sangre', $this->tipo_sangre])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'tel_fijo', $this->tel_fijo])
            ->andFilterWhere(['like', 'tel_movil', $this->tel_movil])
            ->andFilterWhere(['like', 'tel_emergencia', $this->tel_emergencia])
            ->andFilterWhere(['like', 'contacto_emergencia', $this->contacto_emergencia])
            ->andFilterWhere(['like', 'num_doc_id', $this->num_doc_id])
            ->andFilterWhere(['like', 'direc', $this->direc])
            ->andFilterWhere(['like', 'email_trabajo', $this->email_trabajo])
            ->andFilterWhere(['like', 'tel_fijo_trabajo', $this->tel_fijo_trabajo])
            ->andFilterWhere(['like', 'tel_movil_trabajo', $this->tel_movil_trabajo])
            ->andFilterWhere(['like', 'profesion', $this->profesion])
            ->andFilterWhere(['like', 'nit', $this->nit])
            ->andFilterWhere(['like', 'razon_social', $this->razon_social]);

return $dataProvider;
}
}