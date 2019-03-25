<?php
if(isset($_POST['clave'])){
    require_once('core/Conexion.php');
    $con = new Conexion();
    $conn = $con->get_conexion();
    $datos = $conn->query("SELECT * FROM articulos WHERE fecha LIKE '%" . $_POST['clave'] . "%'");
    if ($resultado = $datos) {
       $html = '<form id="principal" class="container-fluid" method="post" action="">';
       $html = $html . '<input type="submit" name="submit" class="excel" value= "Crear Excel">';
        $html= $html. "<div class='container'> <section class='col-xs-12 col-sm-6 col-md-12'>
        <article class='search-result row'>";
        
        
        while ($user = mysqli_fetch_array($resultado)) {
        
            $titulo = " " . $user['titulo'];
            $link = $user['link'];
            $ide = $user['id'];
            $descripcion=$user['descripcion'] . "..";
            $fecha=$user['fecha'];
            $imagen=$user['imagen'];
            $autor=$user['autor'];

            
        
            $html= $html . "<div class='col-xs-12 col-sm-12 col-md-3'>
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
        
        $html=$html ."</section></div>";
        $html = $html . '</div></div>';
        $html = $html . '<form>';
        $resultado->close();
    }
    unset($_POST['clave']);
    echo ($html);
}
?>
