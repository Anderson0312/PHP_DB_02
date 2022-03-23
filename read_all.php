<?php

// 1) Faz conexão com banco de dados e configurações
require('conn.php');

// 2) Escrever a query
$sql = <<<SQL

SELECT * FROM usuarios
WHERE status = 'ativo';

SQL;

// Executar a query e retorna dados na variável
$res = $conn->query($sql);

while ($user = $res->fetch_assoc()) :

    echo '<a href="read_one.php?id=' . $user['id'] . '" target="_blank">' . $user['nome'] . '</a><br>';

endwhile;
