<?php
require_once('inc/config.php');
?>

<!DOCTYPE html>
    <head>
        <meta charset = "utf-8">
        <title>Cadastro de Gêneros Literários</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
        <link href="css/tables.css" rel="stylesheet" type="text/css"/>
        <link rel="shotcut icon" href="images/favicon.png"/>
    </head>
    <body>
    <?php include_once('components/header.php') ?>

        <center>
            <h1>Listagem de Gêneros</h1>
            <table>
                <thread>
                    <tr>
                        <th>#</th>
                        <th>Descrição</th>
                    </tr>
                </thread>
                <tbody>
                    <?php listarGeneros(); ?>
                </tbody>
            </table>
        </center>
        <footer>
            <p><?php echo date("Y"); ?> &copy; Todos os direitos reservados.</p>
        </footer>
    </body>
</html>
