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
</head>
<body>
<?php include_once('components/header.php') ?>
    <center>
        <h1>Lista de livros</h1>
        <table>
                <thread>
                    <tr>
                        <th>Titulo</th>
                        
                        <th>Descricao</th>
                        <!-- <th>Capa</th> -->
                        <th>Ano Lançamento</th>
                        <th>Edição</th>
                        <th>idAutor</th>
                        <th>idEditora</th>
                        <th>Genero</th>
                        
                    </tr>
                </thread>
                <tbody>
                    <?php listarLivros(); ?>
                </tbody>
        </table>
    </center>
    <footer>
        <p><?php echo date("Y"); ?> &copy; Todos os direitos reservados.</p>
    </footer>
</body>
</html>

        
  
    