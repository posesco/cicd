<?php
// Escribir un fichero en un array. En este ejemplo iremos a través de HTTP para
// obtener el código fuente HTML de un URL.
$líneas = file('http://www.example.com/');
echo ">>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<";
// Recorrer nuestro array, mostrar el código fuente HTML como tal y mostrar tambíen los números de línea.
foreach ($líneas as $num_línea => $línea) {
    echo "Línea #<b>{$num_línea}</b> : " . htmlspecialchars($línea) . "<br />\n";
}
echo ">>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<";
// Otro ejemplo: vamos a escribir una página web en una cadena. Véase también file_get_contents().
$html = implode('', file('http://www.example.com/'));
?>