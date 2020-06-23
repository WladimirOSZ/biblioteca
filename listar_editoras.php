<?php
    require_once('inc/config.php');
?>

<!DOCTYPE html>

<head>
    <meta charset = "utf-8">
    <title>Lista de Livros</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <link href="css/tables.css" rel="stylesheet" type="text/css"/>
    <link rel="shotcut icon" href="images/favicon.png"/>
    <link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style.css"> <!-- Resource style -->
</head>
<body>
<?php include_once('components/header.php') ?>
    <center>
        <h1>Lista de Editoras</h1>
        <table>
                <thread>
                    <tr>
                        <th>#</th>
                        <th>Nome</th>
                        
                    </tr>
                </thread>
                <tbody>
                    <?php listarEditoras(); ?>
                </tbody>
        </table>
    </center>
    <footer>
        <p><?php echo date("Y"); ?> &copy; Todos os direitos reservados.</p>
    </footer>
</body>
</html>

        
  
    