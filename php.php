<?php
$host = 'localhost';
$db = 'EnglishLearningPlatform';
$user = 'root';
$pass = '';

// Подключение к базе данных
$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Ошибка подключения: " . $conn->connect_error);
}

// Получение данных из формы
$name = $_POST['name'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_BCRYPT);

// Добавление пользователя в базу данных
$sql = "INSERT INTO Users (Name, Email, PasswordHash) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sss", $name, $email, $password);

if ($stmt->execute()) {
    echo "Регистрация успешна! <a href='login.html'>Войти</a>";
} else {
    echo "Ошибка: " . $conn->error;
}

$stmt->close();
$conn->close();
?>
