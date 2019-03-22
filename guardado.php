<?php
$archivo = "linksRSS.txt";
$links = array();

function guardarArticulos(){
    global $links;
    obtenerLinks();
    //librerias necesarias
    require 'core/Conexion.php';
    require_once 'simplepie-master/autoloader.php';
    //obteniendo conexión con la base de datos
    $con = new Conexion();
    $conexion = $con->get_conexion();
    if($conexion->connect_errno){
        echo "Fallo al conectar con la BD "; //.$this->conexion_db->connect_error;
        return;
    }
    //obteniendo información de los links proporcionados
    $feed = new SimplePie();
    foreach($links as $link){
        $feed->set_feed_url($link);
        $feed->set_cache_location('cache_files');
        $feed->enable_cache();
        $feed->init();
        $fuente = $feed->get_title();    
        $itemQty = $feed->get_item_quantity();
        //Obteniendo los artículos y guardandolos en la bases de datos
        for($i = 0; $i < $itemQty; $i++){
            $item = $feed->get_item($i);
            $titulo = $item->get_title();
            $descripcion = $item->get_description();
            $autor = $item->get_author()->get_name();        
            $fecha = $item->get_date('Y-m-d');
            $linkArticulo = $item->get_link();
            $imagen=$item->get_enclosure()->get_link();
            
        
           $sentencia = "INSERT INTO articulos (fuente, titulo, descripcion, autor, fecha, link,imagen) VALUES('$fuente','$titulo','$descripcion','$autor','$fecha','$linkArticulo','$imagen')";
           $conexion->query($sentencia);            
        } 
    }
    echo "<p>Guardado exitoso</p>";
}

function borrarArticulos(){
    require 'core/Conexion.php';
    $con = new Conexion();
    $conexion = $con->get_conexion();
    if($conexion->connect_errno){
        echo "Fallo al conectar con la BD "; //.$this->conexion_db->connect_error;
        return;
    }
    $sentencia = "DELETE FROM ARTICULOS";
    $conexion->query($sentencia); 
    echo "<p>Eliminado exitoso</p>";
}

function obtenerLinks(){
    global $archivo, $links;
    $gestor = fopen($archivo,'r');
    $texto = fread($gestor, filesize($archivo));
    
    $links = explode(PHP_EOL,$texto);  
    var_dump($links);
    fclose($gestor);
}

?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="css/media.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title></title>
    </head>
    <body>
        <h1 class="tituloIndex">Seleccione una opción</h1><br>
        <div class="botones">
        <a href = "guardado.php?accion=guardar"><button>Guardar artículos en la BD</button></a><br><br>
        <a href = "index.php?accion=vaciar"><button>Borrar artículos en la BD</button></a><br><br>
        <a href = "buscador.php"><button>Realizar búsqueda</button></a>
       </div>
    </body>
</html>

<?php
if (isset($_GET['accion'])) {
    if ($_GET['accion'] == "vaciar") {
        borrarArticulos();
    } else if ($_GET['accion'] == "guardar") {
        guardarArticulos();
    }
}
?>
