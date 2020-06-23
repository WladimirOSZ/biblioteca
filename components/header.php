<?php
require_once('inc/config.php');
?>
<div class="drop">
    <ul class="drop_menu">
        <li><a href="/biblioteca">Home</a></li>
        <?php
        if(isset($_SESSION['idusuario'])){
            echo '<li><a href="#">Autores</a>
                        <ul>
                            <li><a href="listar_autores.php">Listar</a></li>
                            <li><a href="cadastrar_autor.php">Cadastrar</a></li>
                        </ul>
                    </li>'; 

            echo' <li><a href="#">Livros</a>
            <ul>
                <li><a href="listar_livros.php">Listar</a></li>
                <li><a href="cadastrar_livro.php">Cadastrar</a></li>
                <li><a href="apagar_livro.php">Apagar</a></li>
            </ul>
        </li>';

            echo '<li><a href="#"> '.$_SESSION['idusuario'].' 
                </a>
                <ul>
                    <li><a href="perfil.php">Perfil</a></li>
                    <li><a href="lidos.php">Lidos</a></li>
                    <li><a href="sair.php">Sair</a></li>
                </ul>
                </li>';

        }else{  
            echo' <li><a href="#">Autores</a>
            <ul>
                <li><a href="listar_autores.php">Listar</a></li>
                
            </ul>
        </li>'; 


            echo'<li><a href="#">Livros</a>
            <ul>
                <li><a href="listar_livros.php">Listar</a></li>
            </ul>
        </li>';

            echo'<li><a href="#">Conta</a>
                <ul class="js-signin-modal-trigger">
                    <li><a href="login.php" data-signin="login">Logar</a></li>
                </ul>
            </li>'; } 
        ?>
    </ul>
</div>
