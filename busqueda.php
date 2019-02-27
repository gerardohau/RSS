<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    require 'core/Conexion.php';
    $palabrabuscar = $_POST['busqueda'];
    $con = new Conexion();

    $conn = $con->get_conexion();

    $sql = "SELECT *
    FROM articulos
    WHERE titulo LIKE '%$palabrabuscar%'";

    $datos = $conn->query($sql);

    if (isset($_POST['hint'])) {
        $html='';
        if ($datos->num_rows > 0) {
            while ($row = $datos->fetch_assoc()) {
                //$html .= '<div><a class="suggest-element" data="'.$row['titulo'].'" >'.$row['titulo'].' </a></div>';
                $html .= '<div class="col-sm-12"><a class="suggest-element" id="' . $row['titulo'] . '" onclick="seleccionarSugerencia(this.id)">' . $row['titulo'] . ' </a></div>';
            }
        }
        echo $html;
    } else{
        $_POST['indexar'] = false;
        include('index.php');     
        if(!(strlen($palabrabuscar)>0)){
            echo "<span id='error1' >Inserté algo para buscar.</span><br>";
            $_POST['indexar'] = true;
            indexar();
            //indexar();
        }else{

            echo "<div class='results'>";
            if ($datos->num_rows > 0) {
                while ($user = mysqli_fetch_array($datos)) {

                    $titulo = $user['titulo'];
                    $link = $user['link'];
                    $ide = $user['id'];
                    echo "<input type='checkbox' class='seleccionados' value='$ide'><a class=\"links\" href='$link'>$titulo</a>" . "<br>";
                }
            } else {
                echo"<span id='error2'>No se encontró ninguna coincidencia</span><br>";
            }
            echo "</div>";
            echo "<a class='btnRegresar' href='index.php'>Regresar</a>";
        }
    }
}
?>

