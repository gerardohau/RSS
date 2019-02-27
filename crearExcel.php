<?php

$array = $_GET['indices'];





$tabla = '<html lang="es-MX"><head><meta charset="UTF-8"></head><body>';
$tabla .= '<table>';
$tabla .= '<tr><td>Id</td><td>Fuente</td><td>Titulo</td><td>Descripcion</td><td>Autor</td><td>Fecha</td><td>Link</td></tr>';

require_once('core/Conexion.php');
$con = new Conexion();
$conn = $con->get_conexion();
$sql = "SELECT *
     FROM articulos WHERE id IN($array)";
$datos = $conn->query($sql);


while ($elemento = mysqli_fetch_array($datos)) {

    $id = $elemento['id'];
    $Fuente = $elemento['fuente'];
    $Titulo = $elemento['titulo'];
    $Descripcion = $elemento['descripcion'];
    $Autor = $elemento['autor'];
    $Fecha = $elemento['fecha'];
    $Link = $elemento['link'];
    $tabla .= "<tr><td>'$id'</td><td>'$Fuente'</td><td>'$Titulo'</td><td>'$Descripcion'</td><td>'$Autor'</td><td>'$Fecha'</td><td>'$Link'</td></tr>";
}
$tabla .= '</table>';
$tabla .= '</body></html>';

header('Content-Type: application/vnd.ms-excel');
header('Content-Transfer-Encoding: binary');
print $tabla;


?>