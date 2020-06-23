<?php
require_once('inc/config.php');

if($_POST['nome'] != "" && $_POST['email'] != ""){
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $ret = insertAutores($nome,$email);
 

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