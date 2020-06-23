<?php
    
    session_start();
    session_destroy();
    if (!headers_sent()) {
        header("Location: index.php");
        exit;
     }


?>