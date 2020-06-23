<?php
    require_once('inc/config.php');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="images/favicon.png">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link href="css/tables.css" rel="stylesheet" type="text/css"/>
    <title>Biblioteca</title>
    
    
</head>
<body>
<?php include_once('components/header.php') ?>
    
    <center>
        <h1>Biblioteca</h1>
        <tbody>
            <?php listarCapas(); ?>
        </tbody>
    </center>

    <footer>
        <p><?php echo date("Y");?> &copy;Todos os direitos reservados.</p>
    </footer>
</body>
</html>