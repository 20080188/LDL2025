<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <?php
        if ($_SERVER['REQUEST_METHOD'] == "POST"){
        $serie = htmlspecialchars($_POST["serie"]);
        echo "<p>Tu serie preferida es: <b><i><span style='color:red;'>$serie</span></i></b>.</p>";
        }else{
        echo "<p>No se ha enviado ningún dato</p>";
        }
        ?>
    </body>
</html>