<?php
require_once('inc/config.php');
?>
<!DOCTYPE html>
<html>
<head>
    <title>Biblioteca</title>
    <meta charset="utf-8"> 
    <link rel="shortcut icon" href="images/favicon.png"> 
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    
</head>
<body>
    <?php include_once('components/header.php') ?>
    <center>
        <h1>Biblioteca</h1> <!-- cabeçalho de nível 1-->
        <tbody>
            <?php listarCapas(); ?>
        </tbody>
    </center>
<footer>
    <p><?php echo date("Y"); ?> &copy; Todos os direitos reservados.</p> <!-- rodapé -->
</footer>
<body>
</html>
