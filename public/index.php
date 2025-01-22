<?php
require '../src/database.php';

$conn = getDatabaseConnection();

if ($conn) {
    echo "Conexión a la base de datos exitosa!";
} else {
    echo "Error en la conexión a la base de datos.";
}
?>