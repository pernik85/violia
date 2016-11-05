<?php

use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;
use app\models\Clients;

/* @var $this yii\web\View */
/* @var $model app\models\Objects */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="objects-form">

    <?php $form = ActiveForm::begin(); ?>
    <?php
        $modelClients = new Clients();
        $clients = Clients::find()->all();
        // формируем массив, с ключем равным полю 'id' и значением равным полю 'name'
        $items = ArrayHelper::map($clients,'id','last_name');
        $params = [
            'prompt' => 'Укажите клиента'
        ];
        echo $form->field($model, 'client_id')->dropDownList($items,$params);
    ?>
<!--    --><?//= $form->field($model, 'id')->textInput() ?>

<!--    --><?//= $form->field($model, 'client_id')->textInput() 'value' => 'hidden value' ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'addres')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'coord_lat')->hiddenInput()->label(false); ?>

    <?= $form->field($model, 'coord_long')->hiddenInput()->label(false); ?>

    <?= $form->field($model, 'monday')->textInput() ?>

    <?= $form->field($model, 'tuesday')->textInput() ?>

    <?= $form->field($model, 'wednesday')->textInput() ?>

    <?= $form->field($model, 'thursday')->textInput() ?>

    <?= $form->field($model, 'friday')->textInput() ?>

    <?= $form->field($model, 'saturday')->textInput() ?>

    <?= $form->field($model, 'sunday')->textInput() ?>

    <?= $form->field($model, 'actie')->checkbox() ?>

    <?= $this->render("_map", array('model' => $model)); ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
