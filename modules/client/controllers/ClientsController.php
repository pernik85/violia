<?php

namespace app\modules\client\controllers;

use Yii;
use app\models\Clients;
use mdm\admin\models\User;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use mdm\admin\models\form\Signup;

/**
 * ClientsController implements the CRUD actions for Clients model.
 */
class ClientsController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Clients models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Clients::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Clients model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Clients model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Clients();
        $sign = new Signup();
        $data = Yii::$app->request->post();
//        die(pr($_POST));
        if(isset($_POST['Clients'], $_POST['Signup'])){
            $sign->setAttributes($_POST['Signup']);
            $_POST['Clients']['manager_id'] = Yii::$app->user->id.'';
            $model->setAttributes($_POST['Clients']);
            $transaction = Yii::$app->db->beginTransaction();
            if($model->save() && $sign->signup()){
                Yii::app()->db->createCommand(
                    "INSERT INTO auth_assignment (id, email)
                        value ('client', )"
                )->execute();
                $transaction->commit();
                return $this->redirect(['view', 'id' => $model->id]);
            }
            $transaction->rollback();
        }
//        die(pr($model->attributes, $sign->attributes));
        return $this->render('create', [
            'model' => $model, 'user' => $sign
        ]);
    }

    /**
     * Updates an existing Clients model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Clients model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Clients model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Clients the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Clients::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
