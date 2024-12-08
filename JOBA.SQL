<!DOCTYPE html>
<html lang="kk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL Демо: Кестелерді құру және деректерді қосу</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }
        pre {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 5px;
            font-family: Consolas, monospace;
            overflow-x: auto;
            white-space: pre-wrap;
        }
        h1 {
            color: #ff69b4;
        }
        h2 {
            color: #333;
        }
    </style>
</head>
<body>

    <h1>Кестелерді құру және деректерді қосу мысалы</h1>
    
    <h2>1. Users кестесін құру:</h2>
    <pre>
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
    </pre>

    <h2>2. Users кестесіне деректерді қосу:</h2>
    <pre>
INSERT INTO Users (username, email, password)
VALUES 
    ('Аяулым', 'ayaulym@example.com', 'password123'),
    ('Назерке', 'nazerke@example.com', 'password456'),
    ('Мадина', 'madina@example.com', 'password789'),
    ('Жанерке', 'zhanerke@example.com', 'password321'),
    ('Дана', 'dana@example.com', 'password654'),
    ('Әсем', 'asem@example.com', 'password987'),
    ('Гүлмира', 'gulmira@example.com', 'password111'),
    ('Айнұр', 'ainur@example.com', 'password222'),
    ('Аружан', 'aruzhan@example.com', 'password333'),
    ('Айым', 'aiym@example.com', 'password444'),
    ('Балнұр', 'balnur@example.com', 'password555'),
    ('Шолпан', 'sholpan@example.com', 'password666'),
    ('Гүлнұр', 'gulnur@example.com', 'password777'),
    ('Жансая', 'zhansaya@example.com', 'password888'),
    ('Сымбат', 'symbat@example.com', 'password999');
    </pre>

    <!-- Другие части вашего кода остаются без изменений -->

</body>
</html>
