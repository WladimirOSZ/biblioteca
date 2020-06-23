<?php
require_once('inc/config.php');
class Usuario{
    
    private $pdo;
    public $msgErro = "";
    
    
    public function conectar_DB($nome,$host,$usuario,$senha){
        
        global $pdo;
        global $msgErro;
        try{
            $pdo = new PDO("mysql:dbname=".$nome.";host=".$host,$usuario,$senha);
        }catch(PDOException $e){
            $msgErro = $e->getMessage();
        }       
        
    }
    
    public function cadastrar_DB($nome,$email,$senha){
        
        global $pdo;
        global $msgErro;
        $sql = $pdo->prepare("SELECT idLeitor FROM leitor WHERE email = :e");
        $sql->bindValue(":e",$email);
        $sql->execute();
        if($sql->rowCount() > 0){
            return false;
        }else{
            $sql = $pdo->prepare("INSERT INTO leitor (nome,email,senha) VALUES (:n,:e,:s)");
            $sql->bindValue(":n",$nome);
            $sql->bindValue(":e",$email);
            $sql->bindValue(":s",md5($senha));
            $sql->execute();
            return true;
        }
        
    }

    public function logar_DB($usuario,$senha){
        global $pdo;
        global $msgErro;
        $sql = $pdo->prepare("SELECT idLeitor FROM leitor WHERE nome = :u AND senha = :s");
        $sql->bindValue(":u",$usuario);
        $sql->bindValue(":s",md5($senha));
        $sql->execute();
        
         if($sql->rowCount() > 0){
             
             $dado = $sql ->fetch();
             session_start();
             $_SESSION['idusuario'] = $usuario;
             return true;
             
         }else{
             return false;
         }
    }

}
?>