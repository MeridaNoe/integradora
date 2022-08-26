<%--
  Created by IntelliJ IDEA.
  User: nmeri
  Date: 22/8/2022
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <h2 style="color: white;" >PERFIL</h2>

</center>


<center>

    <div class="container mt-5">
        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-header">
                        <div class="row">
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-sm table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Correo Estudiantil</th>
                                <th>Telefono</th>
                                <th>Matricula</th>
                                <th>Cuatrimestre</th>
                                <th>Carrera</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><c:out value="${login.id}"/></td>
                                    <td><c:out value="${login.nombre}"/></td>
                                    <td><c:out value="${login.correo}" /></td>
                                    <td><c:out value="${login.telefono}"/></td>
                                    <td><c:out value="${login.matricula}"/></td>
                                    <td><c:out value="${login.cuatrimestre}"/>
                                    <td><c:out value="${login.carrera}"/></td>
                                    <td>
                                        <a href="getModificar?id=${login.id}" class="btn btn-warning btn-small">
                                            <i class="fa-solid fa-magnifying-glass"></i>Modificar
                                        </a>
                                    </td>

                                </tr>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</center>
</body>
</html>