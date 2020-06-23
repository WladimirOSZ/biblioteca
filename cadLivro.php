<?php
require_once('inc/config.php');

if($_POST['titulo']!="0" && $_POST['descricao']!= "0" && $_POST['publicacao']!= "" 
&& $_POST['edicao']!= "" && $_POST['autor']!= "" && $_FILES['capa']['name']!= "" && 
$_POST['editora']!= "" && $_POST['genero']!= ""){

    $titulo = $_POST['titulo'];
    $descricao = $_POST['descricao'];
    $anoLancamento = $_POST['publicacao'];
    $edicao = $_POST['edicao'];
    $autor = $_POST['autor'];//Era pra ser id
    $editora = $_POST['editora'];//Era pra ser id
    $genero = $_POST['genero'];
    

    date_default_timezone_set("Brazil/East");
    $ext = strtolower(substr($_FILES['capa']['name'], -4));
    $novo_nome = date("Y.m.d-H.i.s") . $ext;
    $dir = 'images/';

    $ret = insertLivro($titulo,$descricao,$novo_nome,$anoLancamento,$edicao,$autor,$editora,$genero);
    if($ret){
        $ret2 = move_uploaded_file($_FILES['capa']['tmp_name'], $dir.$novo_nome);
        if($ret2){
            echo"<script>alert('Cadastro realizado com sucesso !');</script>";
            echo"<script>window.location = 'index.php';</script>";
        }else{
            echo"<script>alert('Erro com o upload da imagem.');</script>";
            echo"<script>window.location = 'cadastrar_livro.php';</script>";
        }

    }else{
        echo"<script>alert('Erro ao realizar o cadastro');</script>";
        echo"<script>window.location = 'cadastrar_livro.php';</script>";
    }

}else{
    echo"<script>alert('Por favor, preencha todos os campos.');</script>";
    echo"<script>window.location = 'cadastrar_livro.php';</script>";
}
?>