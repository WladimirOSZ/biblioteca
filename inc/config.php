<?php
session_start();
  function conectaDB(){
    $pdo = null;
    try{
        $pdo = new PDO("mysql:host=localhost;dbname=bibliotecasite","root","");
    }catch(PDOException $e){
        echo "Não foi possível conectar ao servidor de dados. <br/:>Erro: " .$e;
    }
    return $pdo;
  }


  function listarGeneros(){
    $pdo = conectaDB();
    $sql = $pdo->query("SELECT * FROM generos");
    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo "<tr>";
      echo "<td>" . $linha["id"] . "</td>";
      echo "<td>" . $linha["descricao"] . "</td>";
      echo "</tr>";
    }
  }

  function insertAutores($nome,$resumo){
    $pdo = conectaDB();
    $ret = false;
    $sql = $pdo->prepare("INSERT INTO autor (nome , resumo) VALUES (:nome , :resumo)");
    $sql->bindValue(":nome",$nome,PDO::PARAM_STR);
    $sql->bindValue(":resumo",$resumo,PDO::PARAM_STR);
    $sql->execute();
    if($sql->rowCount() >0){
      $ret = true;
    }
    return $ret;
  }

  function listarAutores(){
    $pdo = conectaDB();
    $sql = $pdo->query("SELECT * FROM autor");
    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo "<tr>";
      echo "<td>" . $linha["idAutor"] . "</td>";
      echo "<td>" . $linha["nome"] . "</td>";
      echo "<td>" . $linha["resumo"] . "</td>";
      echo "</tr>";
    }
  }

  function insertLivro($titulo,$descricao,$capa,$anoLancamento,$edicao,$autor,$editora,$genero){
    $pdo = conectaDB();
    $res = false;
    $sql = $pdo->prepare("INSERT INTO livro(titulo, descricao, capa, anoLancamento, edicao, idAutor, idEditora, genero ) VALUES (:titulo, :descricao,:capa,:anoLancamento, :edicao, :idAutor, :idEditora, :genero)");
 
    $sql->bindValue(":titulo", $titulo);
    $sql->bindValue(":descricao", $descricao);
    $sql->bindValue(":capa", $capa);
    $sql->bindValue(":anoLancamento", $anoLancamento);
    $sql->bindValue(":edicao", $edicao);
    $sql->bindValue(":idAutor", $autor);
    $sql->bindValue(":idEditora", $editora);
    $sql->bindValue(":genero", $genero);
    $sql->execute();
    

    if($sql->rowCount() > 0){
      $res = true;
    }
    
    
    return $res;
  }
  function cadastraUsuario($usuario, $email, $senha){
    $pdo = conectaDB();
    $res = false;


    $sql = $pdo->query("SELECT nome, email FROM leitor where nome='$usuario' or email='$email'");

    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      if(isset($linha['nome'])){
        return false;
      }
    }

    $sql = $pdo->prepare("INSERT INTO leitor(nome, email, senha) VALUES (:nome, :email,:senha)");
    $senha=md5($senha);
    $sql->bindValue(":nome", $usuario);
    $sql->bindValue(":email", $email);
    $sql->bindValue(":senha", $senha);
    $sql->execute();

    if($sql->rowCount() > 0){
      $res = true;
    }
    
    return $res;
  }
function insertEditora($nome){
  $pdo = conectaDB();
  $res = false;
  $sql = $pdo->prepare("INSERT INTO editora(nome)  VALUES(:nome )");
  
  $sql->bindValue(":nome", $nome, PDO::PARAM_STR);
  $sql->execute();
  if($sql->rowCount() > 0){
    $res = true;
  }
  return $res;
}

  function selectGeneros(){

    $pdo = conectaDB();
    $sql = $pdo->query("SELECT * FROM generos");

    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo"<option value = " . "'".$linha["id"]."'>" .$linha['descricao']."</option>";
    }
  }

  function selectAutores(){

    $pdo = conectaDB();
    $sql = $pdo->query("SELECT * FROM autor");

    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo"<option value = " . "'".$linha["idAutor"]."'>" .$linha['nome']."</option>";
    }
  }
  function selectEditoras(){
    $pdo = conectaDB();
    $sql = $pdo->query("SELECT idEditora, nome FROM editora");

    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo"<option value = " . "'".$linha["idEditora"]."'>" .$linha['nome']."</option>";
    }
  }


  function listarLivros(){
    $pdo = conectaDB();
    $sql = $pdo->query("SELECT* FROM livro");
    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo "<tr>";
      
      echo "<td>" . $linha["titulo"] . "</td>";
      echo "<td>" . $linha["descricao"] . "</td>";
      //echo "<td>" . $linha["capa"] . "</td>";
      echo "<td>" . $linha["anoLancamento"] . "</td>";
      echo "<td>" . $linha["edicao"] . "</td>";
      echo "<td>" . $linha["idAutor"] . "</td>";
      echo "<td>" . $linha["idEditora"] . "</td>";
      echo "<td>" . $linha["genero"] . "</td>";
      echo "</tr>";
    }
  }
  function listarEditoras(){
    $pdo = conectaDB();
    $sql = $pdo->query("SELECT idEditora, nome FROM editora");
    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      echo "<tr>";
      echo "<td>" . $linha["idEditora"] . "</td>";
      echo "<td>" . $linha["nome"] . "</td>";
      echo "</tr>";
    }
  }
function listarCapas(){
    $pdo = conectaDB();
    $sql = $pdo->query("SELECT descricao, capa FROM livro;");
    while($linha = $sql->fetch(PDO::FETCH_ASSOC)){
      if($linha["capa"]!=NULL){
        echo '<img src="images/'.$linha["capa"].'" class="imgHome" title="'.$linha["descricao"].'"> ';
      }
        
    }
    }
?>