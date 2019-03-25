<?php
  
  require_once('core/Conexion.php');
  $con = new Conexion();
  $conn = $con->get_conexion();
  $sql = "SELECT * FROM articulos";
  $datos = $conn->query($sql);  

  $dates[] = array();

if($datos->num_rows > 0){
    while($row = $datos->fetch_assoc()){
        $data[] = $row['fecha'];
    }
    $max = count($data);
    for ($i=0; $i < $max; $i++) { 
        $fecha = explode("-", $data[$i]);
        $dateActual = $fecha[2]." ".$fecha[1]." ".$fecha[0];
        if(!in_array($dateActual,$dates)){
            array_push($dates,$dateActual);
        }
    }
    echo json_encode($dates);
}

	?>



	