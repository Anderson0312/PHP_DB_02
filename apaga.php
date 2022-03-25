<?php

// Conecta a página ao banco de dados
require('conn.php');

// Obtém o ID
$id = intval($_GET['id']);

// Se o id é inválido, volta para a listagem
if($id < 1) header('Location: lista.php');

/// Monta a query
$sql = <<<SQL

UPDATE contatos 
SET status = 'apagado'
WHERE id = '{$id}';

SQL;

// Executa a query
$conn->query($sql);

// Volta para a lista
header('Location: lista.php');

?>