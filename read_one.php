<?php

// 1) Faz conexão com banco de dados e configurações
require('conn.php');

// 2) Escrever a query

$user_id = $_GET['id'];

$sql = <<<SQL

SELECT * FROM usuarios
WHERE id = '{$user_id}';

SQL;

// Executar a query e retorna dados na variável
$res = $conn->query($sql);

$user = $res->fetch_assoc();

echo '<pre>';
print_r($user);
echo '</pre>';