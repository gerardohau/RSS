function getInfo(component){
    var date = component.className.split(" ")[1];
    var dataSearch = date.split("_");
    var lookData = "";
    for (let index = 0; index < dataSearch.length; index++) {
        lookData = lookData + dataSearch[index] + "-";
    }
    lookData = lookData.slice(0,-1);
    $.ajax({
        url: "busquedafecha.php",
        type: "POST",
        data: {clave: lookData},
        success: function(data){
            if($('#principal').length){
                eval("var div = document.getElementById(\'principal\'); div.remove()");
            };
            console.log(data);
            $("body").append(data);
        }
    })
}



$(document).ready(function () {
    var fechas;
    $("#clave").typeahead({
        source: function (query, resultado) {
            $.ajax({
                url: "accion.php",
                type: "POST",
                dataType: "json",
                data: { query: query },
                success: function (data) {
                    resultado($.map(data, function (item) {
                        return item;
                    }));
                }
            });
        }
    });
    $('#search').click(function () {
        if ($('#clave').val() == '') {
            Swal.fire(
                'Campo vacío',
                'Introduce algo',
                'warning'
            )
        } else {
            $('#form-search').submit();
        }
    })
    $.ajax({
        url: "fechas.php",
        type: "POST",
        success: function (data) {
            fechas = JSON.parse(data);
            var anios = new Array();
            //Años
            for (let index = 0; index < fechas.length; index++) {
                if (!anios.includes(fechas[index].slice(6, 10))) {
                    anios.push(fechas[index].slice(6, 10));
                }
            }
            for (let index = 1; index < anios.length; index++) {
                $('#dropdown-base').append("<li class='dropdown-submenu'><a onclick='getInfo(this)' class='dropdown-item dropdown-toggle' href='#'>" + anios[index] + "</a><ul class='" + anios[index] + " dropdown-menu'></ul></li>");
            }
            var meses = new Array("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12 ");
            var mesPerAnio = new Array();
            var dias = new Array("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
                "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31");
            var diaPerMes = new Array();
            //Meses
            for (let inAnios = 1; inAnios < anios.length; inAnios++) {
                for (let inFechas = 1; inFechas < fechas.length; inFechas++) {
                    if (fechas[inFechas].slice(6, 10) == anios[inAnios]) {
                        if (meses.includes(fechas[inFechas].slice(3, 5))) {
                            if (!mesPerAnio.includes(fechas[inFechas].slice(3, 5))) {
                                mesPerAnio.push(fechas[inFechas].slice(3, 5));
                            }
                        }
                    }
                }
                for (let inMesPerAnio = 0; inMesPerAnio < mesPerAnio.length; inMesPerAnio++) {
                    $('.' + anios[inAnios]).append("<li class='dropdown-submenu'><a onclick='getInfo(this)' class='dropdown-item dropdown-toggle' href='#'>" + mesPerAnio[inMesPerAnio] + "</a><ul class='" + anios[inAnios] + "_" + mesPerAnio[inMesPerAnio] + " dropdown-menu'></ul></li>");

                    for (let index = 1; index < fechas.length; index++) {

                        if (fechas[index].slice(6, 10) == anios[inAnios]) {
                            if (fechas[index].slice(3, 5) == mesPerAnio[inMesPerAnio]) {
                                if (!diaPerMes.includes(fechas[index].slice(0, 2))) {
                                    diaPerMes.push(fechas[index].slice(0, 2));
                                }
                            }
                        }
                    }
                    for (let inDia = 0; inDia < diaPerMes.length; inDia++) {
                        $('.' + anios[inAnios] + "_" + mesPerAnio[inMesPerAnio]).append("<li><a onclick='getInfo(this)' class='dropdown-item "+ anios[inAnios] + "_" + mesPerAnio[inMesPerAnio] + "_" + diaPerMes[inDia] +"' href='#'>" + diaPerMes[inDia] + "</a></li>");

                    }

                    diaPerMes = [];
                }




                mesPerAnio = [];
            }

        }

    });

});

