<?php
require_once('inc/config.php');

if($_POST['nome'] != ""){
    $nome = $_POST['nome'];
    $ret = insertEditora($nome);
 

    if($ret){
        echo"<script>alert('Cadastro realizado com sucesso!')</script>";
        echo"<script>window.location = 'index.php';</script>";
    }else{
        echo"<script>alert('Erro ao realizar o cadastro de um campo!')</script>";
        echo"<script>window.location = 'index.php';</script>";
    }
}else{   
    echo"<script>alert('Por favor preencha todos os dados.')</script>";
    echo"<script>window.location = 'index.php';</script>";
}
?>