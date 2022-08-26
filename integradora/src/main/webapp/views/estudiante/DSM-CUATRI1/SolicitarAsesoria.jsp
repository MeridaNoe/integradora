<%--
  Created by IntelliJ IDEA.
  User: nmeri
  Date: 22/8/2022
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Perfil</title>

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
<jsp:include page="/WEB-INF/template/navbar.jsp"/>
<center>

    <h2 style="color: white;" >SOLICITUD DE ASESORIA</h2>

</center>

<center>
    <table>
        <tr style="color: white;" >
            <td>
                <div class="row"  class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383;">
                            <div class="card-body">}
                               <form action="getAs1">
                                    <input type="hidden" value="Algebra Lineal">
                                    <h1 class="card-title">Algebra Lineal</h1>
                                    <button type="submit">Registrar Asesoria</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td>

            <td>
                <div class="row"  class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383;">
                            <div class="card-body">
                                <h5 class="card-title">Desarrollo de Habilidades del Pensamiento Logico</h5>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td>

            <td>
                <div class="row"  class="card text-center" style="width: 18rem; " >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383; height: 238px;">
                            <div class="card-body">
                                <h2 class="card-title">Fundamentos de TI</h2>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td>

            <td>
                <div class="row" class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383; height: 238px;">
                            <div class="card-body">
                                <h2 class="card-title">Fundamentos de Redes</h2>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>

        </tr>
        <!-- /////////////////////////////////////  -->

        <tr style="color: white;" >
            <td>
                <div class="row"  class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383; height: 238px;">
                            <div class="card-body">
                                <h4 class="card-title">Metodologia de la Programacion</h4>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td>

            <td>
                <div class="row"  class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383;">
                            <div class="card-body">
                                <h3 class="card-title">Expresion Oral y Escrita I</h3>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td>

            <td>
                <div class="row"  class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383; height: 238px;">
                            <div class="card-body">
                                <h1 class="card-title">Ingles I</h1>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>

            <td>

            <td>
                <div class="row"  class="card text-center" style="width: 18rem;" >
                    <div class="col-sm-10">
                        <div class="card" style=" background-color: #18A383; ">
                            <div class="card-body">
                                <h3 class="card-title">Formacion Sociocultural I</h3>
                                <a href="getAs1" class="link-registro"><h2><em style="color: yellow;">Registrar Asesoria</em></h2></a>

                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</center>
</div>
</div>
</div>
</body>
</html>
