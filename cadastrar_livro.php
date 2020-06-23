<?php
    require_once ('inc/config.php');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset = "utf-8">
    <title>Cadastro de Livros</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <link href="css/forms.css" rel="stylesheet" type="text/css"/>
    <link rel="shotcut icon" href="images/favicon.png"/>
    
</head>
<body>
    <?php include_once('components/header.php') ?>
    <center>
        <h1>Cadastro de livros</h1>
    </center>
    <section>
        <div class="formulario">
            <form action="cadLivro.php" method="post" enctype="multipart/form-data" autocomplete="off">
                <label>*Autor</label>
                <select name="autor" class="m" autofocus>
                    <option value="0" selected>--Selecione--</option>
                    <?php selectAutores();?>
                </select>

                <label>*Editora</label>
                <select name="editora" class="m" autofocus>
                    <option value="0" selected>--Selecione--</option>
                    <?php selectEditoras();?>
                </select>

                <label>*Titulo</label>
                <input type="text" name="titulo" class="g" required>
                
                <label>*Descrição</label>
                <input name="descricao" cols="10" rows="5" class="g" required>
                
                <label>*Capa</label>
                <input type="file" name="capa" class="g" required>

                <label>*Edicao</label>
                <input name="edicao" cols="2" rows="2" class="g" required>

                <label>*Genero</label>
                <input name="genero" cols="10" rows="5" class="g" required>

                <label>*Publicação</label>
                <input type="text" name="publicacao" class="p" id="datepicker11">
                <input type="submit" value="CONFIRMAR">
            </form>
        </div>
    </section>
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery.zebra-datepicker.js"></script>
</body>
</html>

    