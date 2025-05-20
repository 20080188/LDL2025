<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
    <div class="bg-white p-8 rounded shadow-md w-full max-w-md text-center">
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["serie"]) && !empty(trim($_POST["serie"]))) {
            $serie = htmlspecialchars(trim($_POST["serie"]));
            echo "<p class='text-xl font-semibold text-gray-800'>Tu serie preferida es: 
                  <span class='text-red-600 italic font-bold'> $serie </span>.</p>";
        } else {
            echo "<p class='text-red-500 text-lg font-semibold'>No se ingresó ningún nombre de serie.</p>";
        }
        ?>
        
        <a href="formulario.php" class="mt-6 inline-block text-blue-500 hover:underline">Volver al formulario</a>
    </div>
</body>
</html>