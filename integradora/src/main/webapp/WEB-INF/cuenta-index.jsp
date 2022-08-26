<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Required meta tags -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
    integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <title>Crear Cuenta</title>

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


<center>

  <h2 style="color: white;" >INGRESA TUS DATOS</h2>

</center>


<center>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card mt-5">
                    <div class="card-header">REGISTRAR ESTUDIANTE</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <form name="registerPerson" class="needs-validation" novalidate action="savePerson" method="post">
                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="nombre" class="fw-bold">Nombre(s)</label>
                                                <input type="text" class="form-control" name="nombre" id="nombre" required>
                                                <div class="invalid-feedback">
                                                    Campo Obligatorio
                                                </div>
                                            </div>
                                            <div class="col">
                                                <label for="correo" class="fw-bold">Correo Intitucional</label>
                                                <input type="text" class="form-control" name="correo" id="correo" required="@utez.edu.mx">
                                                <div class="invalid-feedback">
                                                    Campo Obligatorio
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="telefono" class="fw-bold">Telefono</label>
                                                <input type="text" class="form-control" name="telefono" id="telefono" required>
                                                <div class="invalid-feedback">
                                                    Campo Obligatorio
                                                </div>
                                            </div>
                                            <div class="col">
                                                <label for="contra" class="fw-bold">Contraseña</label>
                                                <input type="text" class="form-control" name="contra" id="contra" required>
                                                <div class="invalid-feedback">
                                                    Campo Obligatorio
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="matricula" class="fw-bold">Matricula</label>
                                                <input type="text" class="form-control" name="matricula" id="matricula" required>
                                                <div class="invalid-feedback">
                                                    Campo Obligatorio
                                                </div>
                                            </div>
                                            <div class="col">
                                                <label for="cuatrimestre" class="fw-bold">Cuatrimestre</label>
                                                <input type="number" class="form-control" name="cuatrimestre" id="cuatrimestre" required>
                                                <div class="invalid-feedback">
                                                    Campo Obligatorio
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <label for="carrera" class="fw-bold">carrera</label>
                                        <input type="text" class="form-control" name="carrera" id="carrera" required>
                                        <div class="invalid-feedback">
                                            Campo Obligatorio
                                        </div>

                                   <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col">
                                                <label for="role" class="fw-bold">Rol</label>
                                                <select name="role" id="role" class="form-select" aria-label="Default select example">
                                                    <option selected>Selecciona un Rol...</option>
                                                    <option value="E">Estudiante</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <hr style="height:2px"; width:100%; border-width:0; color=gray; background-color:gray;>
                                    <div class="form-group mb-3">
                                        <div class="row">
                                            <div class="col-12 text-end">
                                                <button type="submit" class="btn btn-success btn-sm">Registrar</button>
                                                <button type="button" class="btn btn-danger btn-sm">Cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</center>
</body>
</html>