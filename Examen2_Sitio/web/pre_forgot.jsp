<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>TicoBooking</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="icon" href="img/costa-rica64.png">

    </head>


    <body class="text-center place-body-other bg3">
        <nav class="navbar navbar-expand-md navbar-dark fixed-top nav-green">
          <a class="navbar-brand" href="index.jsp"><span class="pr-2"><img src="img/costa-rica32.png"></span><strong>TicoBooking</strong></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item"></li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
              <ul class="navbar-nav mr-auto">
                 <li class="nav-item active">
                  <a class="nav-link" href="tipo_cambio.jsp">Tipo de Cambio</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="ayuda.jsp">¿Necesitas ayuda?</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="login.jsp">Ingresar</a>
                </li>
              </ul>
            </form>
          </div>
        </nav>
        
        <div class="sign-in-body" style="background-color: transparent;">
            <s:form  theme="simple" cssClass="form-signin form-redirect" action = "pre_forgot" id="pre_register" method = "post">
            <!--<form class="form-signin">-->
                <h1 class="text-green">TicoBooking</h1>
                <h1 class="h3 mb-3 font-weight-normal text-green">Restablecer Contraseña</h1>
                <h5> Antes de poder recuperar tu contraseña necesitamos confimar tu dirección de Correo Electrónico </h5><br/>
                <label for="inputEmail" class="sr-only">Correo Electronico</label>
                <s:textfield type = "email" cssClass="form-control" id="inputEmail" name = "u.correo" placeholder="Correo Electrónico" required="required"></s:textfield>
                <!--<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>-->
                <label for="inputEmail" class="sr-only">Cédula</label>
                <s:textfield type = "cedula" cssClass="form-control" id="inputEmail" name = "u.cedula" placeholder="Cédula" required="required"></s:textfield>
                <br/>
                 <s:submit cssClass="btn btn-success btn-lg btn-block" type="submit" value="Enviar"></s:submit>
                <!--<button class="btn btn-lg btn-success btn-block" type="submit">Continuar</button>-->
            </s:form>
        </div>

        <!-- Footer -->
        <footer class="footer bg-light">
            <div class="container">
                <div class="row">
                    <div class="foot col-lg-6 h-100 text-center mx-auto">
                        <ul class="list-inline mb-2">
                            <li class="list-inline-item">
                                <a href="#">Ayuda</a>
                            </li>
                            <li class="list-inline-item">&sdot;</li>
                            <li class="list-inline-item">
                                <a href="#">Hospedaje</a>
                            </li>
                            <li class="list-inline-item">&sdot;</li>
                            <li class="list-inline-item">
                                <a href="#">Vehículos</a>
                            </li>
                        </ul>
                        <p class="text-muted small mb-4 mb-lg-0">&copy; JBSG 2019. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </footer>

        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>

    </body>
</html>

