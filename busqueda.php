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

        //Arreglar el boton de crear Excel aparece hasta arriba
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
                echo "<div class='container'> <section class='col-xs-12 col-sm-6 col-md-12'>
                <article class='search-result row'>";
                while ($user = mysqli_fetch_array($datos)) {

                    $titulo = " " . $user['titulo'];
                    $link = $user['link'];
                    $ide = $user['id'];
                    $descripcion=$user['descripcion'] . "..";
                    $fecha=$user['fecha'];
                    $imagen=$user['imagen'];
                    $autor=$user['autor'];
        
                    echo "<div class='col-xs-12 col-sm-12 col-md-3'>
                    <a href='#' class='thumbnail'><img src='$imagen' /></a></div>
                    <div class='col-xs-12 col-sm-12 col-md-2'>
                    <ul class='meta-search'>
                    <li><i class='glyphicon glyphicon-calendar'></i> <span>$fecha</span></li>
                    </ul>
                    </div> 
                    <div class='col-xs-12 col-sm-12 col-md-7 excerpet'>
				    <h3><a href='$link' title=''>$titulo</a></h3>
                    <p text-overflow: ellipsis;>$descripcion </p>
                    <p>Autor: $autor</p>						
                    <span class='plus'><input type='checkbox' class='seleccionados' value='$ide'></a></span>
                    </div>
                    <span class='clearfix borda'></span>";
                }
                echo "</section></div>";
            } else {
                echo"<span id='error2'>No se encontró ninguna coincidencia</span><br>";
            }
            echo "</div>";
            echo "<form action='index.php' class='regresar'>
                <input type='submit' class='btn btn-info' value='Regresar' />
            </form>";
        }
    }
}
?>

