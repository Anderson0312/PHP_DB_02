<?php

// 1) Faz conexão com banco de dados e configurações
require('conn.php');

// 2) Query de update
$sql = <<<SQL

UPDATE usuarios 
SET 
    nome = 'Jonathan de Souza',
    email = 'jonthan@gmail.com'
WHERE id = '5';

SQL;

$conn->query($sql);
