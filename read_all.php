<?php

// 1) Faz conexão com banco de dados e configurações
require('conn.php');

// 2) Escrever a query
$sql = <<<SQL



SELECT * FROM contatos
WHERE status = 'ativo';

$nome = $user['nome'];
$email = $sql['email'];
$assunto = $sql['assunto'];
$mensagem = $sql['mensagem']

SQL;

// Executar a query e retorna dados na variável
$res = $conn->query($sql);

echo <<<HTML

<table>
<tr>
    <th>Nome</th>
    <th>E-mail</th>
    <th>Assunto</th>
    <th>Mensagem</th>
</tr>

HTML;

while ($user = $res->fetch_assoc()) :

    echo <<<HTML
    
<tr>
    <td>{$nome} </td>
    <td>{$email}</td>
    <td>{$assunto}</td>
    <td>{$mensagem}</td>
</tr>
    
HTML;

endwhile;

echo '</table>';
