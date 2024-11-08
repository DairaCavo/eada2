<?php
session_start();
include('conexion.php'); // Incluir el archivo de conexión

// Obtener datos del formulario
$Nombre = $_POST['username']; // Asegúrate de que el nombre del campo coincida
$Contraseña = $_POST['password']; // Asegúrate de que el nombre del campo coincida

// Preparar la consulta SQL para evitar inyecciones SQL
$sql = "SELECT Id_usuario, Nombre, Contraseña FROM usuarios WHERE Nombre = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $Nombre);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    // Verificar la contraseña sin encriptación
    if ($Contraseña === $row['Contraseña']) {
        // Login exitoso
        $_SESSION['Nombre'] = $row['Nombre']; // Almacena el nombre en la sesión
        header("Location: principal.php"); // Redirigir a la página de bienvenida
        exit();
    } else {
        echo '<p class="Incorrecto">Contraseña incorrecta.</p>';
    }
} else {
    echo '<p class="Incorrecto">Nombre de usuario no encontrado.</p>';
}

$stmt->close();
$conn->close();
?>
