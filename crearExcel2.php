<?php

$array=$_GET['indices'];;

echo $array;
$tabla='<html><body>';
    $tabla.='<table>';
    $tabla.='<tr><td>Id</td><td>Fuente</td><td>Titulo</td><td>Descripcion</td><td>Autor</td><td>Fecha</td><td>Link</td></tr>';
    


    require_once('core/Conexion.php');
    $con = new Conexion();
    $conn = $con->get_conexion();
    $sql = "SELECT *
     FROM articulos WHERE id IN('$array')";
    echo $sql;
    $datos = $conn->query($sql);
    var_dump (mysqli_fetch_all($datos));
   /*
    
    while ($elemento = mysqli_fetch_array($datos)) {
        
        $id = $elemento['id'];
        $Fuente = $elemento['fuente'] ;
        $Titulo = $elemento['titulo'];      
        $Descripcion = $elemento['descripcion'] ;
        $Autor= $elemento['autor'];
        $Fecha = $$elemento['fecha'];
        $Link = $elemento['link'] ;
        $tabla.="<tr><td>'$id'</td><td>'$Fuente'</td><td>'$Titulo'</td><td>'$Descripcion'</td><td>'$Autor'</td><td>'$Fecha'</td><td>'$Link'</td></tr>";
        

        
    }
    $tabla.='</table>';
    $tabla.='</body></html>';

    header('Content-Type: application/vnd.ms-excel');
    header('Content-Transfer-Encoding: binary');
    print $tabla;
?>*/