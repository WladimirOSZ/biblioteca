<!DOCTYPE html>

<head>
    <meta charset = "utf-8">
    <title>Cadastro de Autores</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <link href="css/forms.css" rel="stylesheet" type="text/css"/>
    <link rel="shotcut icon" href="images/favicon.png"/>
    
</head>
<body>
<?php include_once('components/header.php') ?>
    <center>
        <h1>Cadastro de Autores</h1>
    </center>
    <section>
        <div class="formulario">
            <form action="cadAutor.php" method="post">
                <label>*Nome</label>
                <input type="text" name="nome" class="g" required autofocus>
                <label>*Email</label>
                <input type="text" name="email" class="g" required autofocus>
                <input type="submit" value="CONFIRMAR">
            </form>
        </div>
    </section>
</body>
</html>