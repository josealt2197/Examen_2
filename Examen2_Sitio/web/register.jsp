
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<body class="bg-light">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top nav-green">
    <a class="navbar-brand" href="index.jsp"><span class="pr-2"><img src="img/costa-rica32.png"></span><strong>TicoBooking</strong></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">Hospedaje</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Vehículos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Ayuda</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="login.jsp">Ingresar</a>
          </li>
        </ul>
      </form>
    </div>
  </nav>

  <div class="container register-body">
    <div class="py-5 text-center">
      <h1 class="text-green">TicoBooking</h1>
      <h2>Registro de Usuarios</h2>
      <p class="lead">Llena los espacios que se solicitan abajo para completar el registro de tu cuenta.</p>
    </div>

    <div class="row ">
      <div class="col-md-8 mx-auto">
        <h4 class="mb-3">Datos Personales</h4>
        <form class="needs-validation" novalidate>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="firstName">Nombre Completo</label>
              <input type="text" class="form-control" id="firstName" placeholder="Nombre y Apellidos" value="" required>
              <div class="invalid-feedback">
                Un nombre valido es requerido.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="lastName">Cedula</label>
              <input type="text" class="form-control" id="lastName" placeholder="Número de Cédula" value="" required>
              <div class="invalid-feedback">
                Una Cédula valida es requerida.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">Correo Electrónico</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">@</span>
              </div>
              <input type="email" class="form-control" id="email" placeholder="ticobooking@correo.com" required>
              <div class="invalid-feedback" style="width: 100%;">
                Un Correo Electrónico valido es requerido.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="pass">Contraseña</label>
            <input type="password" class="form-control" id="pass" placeholder="Contraseña" required>
            <div class="invalid-feedback">
              Este campo es requerido.
            </div>
          </div>

          <div class="mb-3">
            <label for="pass2">Confirmar Contraseña</label>
            <input type="password" class="form-control" id="pass2" placeholder="Confirmar Contraseña" required>
            <div class="invalid-feedback">
              Este campo es requerido.
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="birth">Fecha de Nacimiento</label>
              <input type="date" class="form-control" id="pass2" placeholder="Confirmar Contraseña" required>
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="phone">Teléfono</label>
              <input type="number" class="form-control" id="phone" placeholder="12345678" required>
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
          </div>
          <hr class="mb-4">
          <button class="btn btn-success btn-lg btn-block" type="submit">Completar Registro</button>
        </form>
      </div>
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

    <script>
      (function () {
        'use strict'

        window.addEventListener('load', function () {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation')

    // Loop over them and prevent submission
    Array.prototype.filter.call(forms, function (form) {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault()
          event.stopPropagation()
        }
        form.classList.add('was-validated')
      }, false)
    })
  }, false)
      }());
    </script>
  </body>
  </html>

