<?php

// Array tipo 'matriz'
$teste[0] = 'Casa';
$teste[1] = 'Apartamento';
$teste[2] = 'Barraca';
$teste[3] = 'Choupana';
$teste[4] = 'Oca';
$teste[5] = 'Biboca';

foreach ($teste as $value) {
    echo "$value <br>";
}

echo '<hr>';

for ($i = 0; $i < count($teste); $i++) {
    echo "{$teste[$i]} <br>";
}

echo '<hr>';

$index = 0;
while ($index <= 3) {
    echo "{$teste[$index]} <br>";
    $index++;
}

echo '<hr>';

// Array tipo 'vetor'
$cars['fiat'] = 'Uno';
$cars['ford'] = 'Maveric';
$cars['vw'] = 'Fusca';

foreach ($cars as $ind => $val) {
    echo "$ind = $val<br>";
}
