<?php
 echo ' <link href="css/media.css" rel="stylesheet">
 <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">';
$palabrabuscar=@$_POST['busqueda'];


include('buscador.php');
require('core/Conexion.php');

$con=new Conexion();

$conn=$con->get_conexion();

$sql="SELECT *
FROM articulos
WHERE titulo LIKE '%$palabrabuscar%'";

$datos= $conn->query($sql);

while($user= mysqli_fetch_array($datos)){
        
    $titulo= $user['titulo'];
    $link= $user['link'];
    
    echo "<a class=\"links\" href='$link'>$titulo</a>" . "<br>";
    
}


?>