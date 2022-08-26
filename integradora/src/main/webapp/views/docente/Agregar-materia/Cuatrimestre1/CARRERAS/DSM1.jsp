<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Agregar Materia</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>


    <!--CODIGO PARA PONER IMAGEN EN LA PESTAÑA DEL NAVEGADOR-->

    <link rel="icon" href="/IMAGES-LOGIN/ICONO.png">

</head>

<body style="background-color:#062D7B;">
<jsp:include page="/WEB-INF/template/navbar2.jsp"/>
<center>

    <h2 style="color: white;" >Seleccione la Materia a Impartir</h2>

</center>


<center>
    <div style="width: 900px; height:300px; background-color:  #18A383; border-radius: 8px;">


        <h2 style="color: white;">DSM-Desarrollo de Sofware multiplataforma</h2>
        <br><br>
        <table  >
            <TR><TD> <button  onclick="alerta()"class="btn btn-info">Álgebra lineal </button> </TD><TD><button onclick="alerta()" class="btn btn-info">Desarrollo de habilidades de pensamiento lógico </button></TD>
            </TR>
            <TR><TD> <button  onclick="alerta()" class="btn btn-secondary"> Fundamentos de TI</button></TD><TD><button  onclick="alerta()" class="btn btn-secondary">Fundamentos de redes </button></TD>
            </TR>
            <TR><TD><button onclick="alerta()" class="btn btn-info">Metodología de la programación </button></TD><TD><button  onclick="alerta()" class="btn btn-info">Inglés I</button></TD>
            </TR>
            <TR><TD><button  onclick="alerta()" class="btn btn-secondary">Expresión Oral y Escrita I</button></TD><TD><button  onclick="alerta()" class="btn btn-secondary">Formación Sociocultural I</button></TD>
            </TR>
        </table>

    </div>
</center>




</body>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    function alerta() {
        swal({
            title: "Confirmar impartir materia",
            text: "Estas seguro de impartir materia",
            icon: "info",
            buttons: ["Cancelar",true],
        })
            .then((willDelete) => {
                if (willDelete) {
                    swal("Impartes esta materia", {
                        icon: "success",
                    });
                } else {
                    swal("No se realizo ningun cambio");
                }
            });
    }
</script>

</html>
