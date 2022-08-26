<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <title>Inicio de Sesion</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="styles.css">

    <!--CODIGO PARA PONER IMAGEN EN LA PESTAÑA DEL NAVEGADOR-->

    <link rel="icon" href="/IMAGES-LOGIN/ICONO.png" >
</head>
<body style="background-color: #18A383;" >

<br>
<br>
<br>
<br>


<div  style="width:400px; height:350px; margin-right: 900px;" >
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Inicio de Sesion</h3>

            </div>
            <div class="card-body">
                <form action="login" method="post">

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input name="username" type="text" class="form-control" placeholder="Usuario">

                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input name="password" type="password" class="form-control" placeholder="Contraseña">
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Iniciar Sesion" class="btn float-right login_btn">
                    </div>

                </form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    <a href="createIndex">Crear Cuenta </a>
                </div>
            </div>
        </div>
    </div>
</div>




<img src="IMAGES-LOGIN/FONDO-LOGIN3.png" style="width: 1100px; height:700px; margin-left: 400px; margin-top: -450px;" >


<p class="center-content">

</p>
</body>
</html>







