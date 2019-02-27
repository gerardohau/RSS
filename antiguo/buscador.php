
 <link href="css/media.css" rel="stylesheet">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <div class="box">
  <div class="container-4">
 <form  method="post" name="formu" id="formu" class="formulario"  action="busqueda.php" >

      <h4>Ingresa tu busqueda:</h4>
      <input type="search" id="search" placeholder="Search..." name="busqueda" onkeyup="mostrarSugerencias(this.value)" />   
      
      <input type="submit" value="&#128269"class="lupa">
      <div id ="mostrar" ></div>
      
</form>
</div>
</div>
 
<script>
function mostrarSugerencias(str){
    if(str.length == 0){
        document.getElementById("mostrar").innerHTML = "";
        return;
    }else { 
        let formData = new FormData();
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if(this.readyState == 4 && this.status == 200){
               document.getElementById("mostrar").innerHTML = this.responseText; 
            }
        }
        formData.append("hint",str);
        xmlhttp.open("POST", "sugerencias.php",true);
        xmlhttp.send(formData);
        
    }
}

function cambiar(str){
    document.getElementById("search").value = str; 
    document.getElementById("mostrar").innerHTML = "";
}
</script>

