<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <img src="" style="width: 2%;" alt="">
        <a class="navbar-brand" href="#">DOCENTE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="btn btn-outline-primary" class="nav-link" href="getAgregar">Agregar Materia</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-success" class="nav-link" href="getMateriasIm">HISTORIAL DE ASESORIAS</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-success" class="nav-link" href="getPeticiones">ASESORIAS RECHAZADAS</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-success" class="nav-link" href="getAsesoriasIm">HISTORIAL DE MATERIAS</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-success" class="nav-link" href="getAsesoriasRe">PETICIONES DE ASESORIAS</a>
                </li>
                <li class="nav-item active">
                    <a href="login"  class="btn btn-outline-info" role="button" data-bs-toggle="button" style="width: 140px; ">CERRAR SESION</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
