<?php

function indexar() {
    if (isset($_POST['indexar'])) {
        if (!$_POST['indexar']) {
            return;
        }
    }
    $page = 1; //inicializamos la variable $page a 1 por default
    if (array_key_exists('pg', $_GET)) {
        $page = $_GET['pg']; //si el valor pg existe en nuestra url, significa que estamos en una pagina en especifico.
    }
    require_once('core/Conexion.php');
    $con = new Conexion();
    $conn = $con->get_conexion();
    $sql = "SELECT *
     FROM articulos";
    $datos = $conn->query($sql);
    $total_records = $datos->num_rows;
    $sql2 = "SELECT *  FROM articulos LIMIT " . (($page - 1) * 10) . ", 10";
    $datos2 = $conn->query($sql2);


    echo "<div class='container'> <section class='col-xs-12 col-sm-6 col-md-12'>
    <article class='search-result row'>";


    while ($user = mysqli_fetch_array($datos2)) {

        $titulo = " " . $user['titulo'];
        $link = $user['link'];
        $ide = $user['id'];
        $descripcion=$user['descripcion'] . "..";
        $fecha=$user['fecha'];

        echo "<div class='col-xs-12 col-sm-12 col-md-3'>
        <a href='#' title='Lorem ipsum' class='thumbnail'><img src='http://lorempixel.com/250/140/people' alt='Lorem ipsum' /></a></div>
        <div class='col-xs-12 col-sm-12 col-md-2'>
        <ul class='meta-search'>
            <li><i class='glyphicon glyphicon-calendar'></i> <span>$fecha</span></li>
        </ul>
        </div> 
        <div class='col-xs-12 col-sm-12 col-md-7 excerpet'>
				<h3><a href='$link' title=''>$titulo</a></h3>
				<p text-overflow: ellipsis;>$descripcion </p>						
                <span class='plus'><input type='checkbox' class='seleccionados' value='$ide'></a></span>
        </div>
        <span class='clearfix borda'></span>";
    }

    echo "</section></div>";






    echo "<div class='indicenum'>";

    $max_num_paginas = ceil($total_records / 10);

    for ($i = 0; $i < $max_num_paginas; $i++) {
        echo '<a href="index.php?pg=' . ($i + 1) . '">' . ($i + 1) . '</a> | ';
    }

    echo "</div>";
}

function ordenarFecha(){
    require_once('core/Conexion.php');
    $con = new Conexion();
    $conn = $con->get_conexion();
    $sql = "SELECT *
     FROM articulos";
    $datos = $conn->query($sql);
   
   $meses=[
       1=>"Enero",
       2=>"Febrero",
       3=>"Marzo",
       4=>"Abril",
       5=>"Mayo",
       6=>"Junio",
       7=>"Julio",
       8=>"Agosto",
       9=>"Septiembre",
       "Octubre",
       "Noviembre",
       "Diciembre"];


    while ($user = mysqli_fetch_array($datos)) {

        $titulo = " " . $user['titulo'];
        $link = $user['link'];
        $ide = $user['id'];
        $fecha=$user['fecha'];
        
        $datosFecha = explode("-", $fecha);
        
        echo "<nav><ul>" . 
        
        
        
        
        "</ul></nav>";


        //echo "<input type='checkbox' class='seleccionados' value='$ide'>" . "<a class='links' href='$link'>$titulo</a>" . "<h1>" . $datosFecha[0] . "</h1>" ."<br>";
    }
}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="css/media.css" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Feed</title>
    </head>
    <body>

        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <form  method="post" name="formu" id="formu" class="formulario"  action="busqueda.php" >
                        <h4>Ingresa tu busqueda:</h4>
                        <div class="form-group row">      
                            <div class="col-sm-5">
                                <input type="search" id="search" class="form-control" placeholder="Buscar..." name="busqueda" onkeyup="mostrarSugerencias(this.value)" />   
                            </div>
                            <input type="submit" class="btn btn-info btn-flat" value="&#128269"class="lupa">
                        </div>
                        <div id ="mostrar-sugerencias" class="col-sm-5" ></div>
                    </form>

                    <!-- Lo suyo sería que hicieramos la busqueda con AJAX igual -->
                </div>
            </div>
            <br>
            <br>
            <div  class="row">
                <div class="col-lg-12">
<?php

indexar();

?>
                </div>
            </div>

        </div> 
        <div id="content"></div>
        <div class ="row">
            <div class="col-lg-12">
                <input type="button" id="creaExcel" class="creaExcel"value="Crear Excel">
            </div>
        </div>
    </body>
</html>



<script language="javascript">

    document.getElementById("creaExcel").onclick = function ()
    {
        let indices = [];
        let inputElements = document.getElementsByClassName('seleccionados');
        for (var i = 0; inputElements[i]; ++i) {
            if (inputElements[i].checked) {
                indices.push(inputElements[i].value);
            }
        }
        if(indices.length === 0){
            alert("Seleccione alguna noticia.");
            return;
        }
        //alert("Generando excel, presione Aceptar.");
        window.open("crearExcel.php?indices="+indices,'_blank' );
        
    }
    
    function mostrarSugerencias(str) {
        if (str.length === 0) {
            document.getElementById("mostrar-sugerencias").innerHTML = "";
            return;
        } else {
            let formData = new FormData();
            let xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("mostrar-sugerencias").innerHTML = this.responseText;
                }
            }
            formData.append("busqueda", str);
            formData.append("hint", true);
            xmlhttp.open("POST", "busqueda.php", true);
            xmlhttp.send(formData);

        }
    }

    function seleccionarSugerencia(str) {
        document.getElementById("search").value = str;
        document.getElementById("mostrar-sugerencias").innerHTML = "";
    }


</script>