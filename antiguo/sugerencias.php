<?php
if(isset($_POST["hint"])){
$palabrabuscar=$_POST['hint'];
$html = '';

require('core/Conexion.php');

$con=new Conexion();

$conn=$con->get_conexion();

$sql="SELECT *
FROM articulos
WHERE titulo LIKE '%$palabrabuscar%'";

$datos= $conn->query($sql);

if($datos->num_rows>0){
    while($row = $datos->fetch_assoc()){
        //$html .= '<div><a class="suggest-element" data="'.$row['titulo'].'" >'.$row['titulo'].' </a></div>';
        $html .= '<div><a class="suggest-element" id="'.$row['titulo'].'" onclick="cambiar(this.id)">'.$row['titulo'].' </a></div>';
    }
}
echo $html;
}

?>