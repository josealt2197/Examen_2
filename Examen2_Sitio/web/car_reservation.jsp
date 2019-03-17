
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
<body class="bg-light">

  <nav class="navbar navbar-expand-md navbar-dark fixed-top nav-green">
    <a class="navbar-brand" href="index.html"><span class="pr-2"><img src="img/costa-rica32.png"></span><strong>TicoBooking</strong></a>
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
            <a class="nav-link" href="#">¿Necesitas ayuda?</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Ingresar</a>
          </li>
        </ul>
      </form>
    </div>
  </nav>

  <div class="container">
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
      <h2>Reservación de Vehículos</h2>
      <p class="lead">Llena los espacios que se solicitan abajo para completar la reservación.</p>
    </div>

    <div class="row">
      <s:iterator  value="car_info">
      <div class="col-md-4 order-md-1">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted"><s:property value="modelo.getValue()"></s:property></span>
          <span class="badge badge-primary badge-pill"><s:property value="tipo.getValue()"></s:property></span>
        </h4>
        <div class="mb-3">
          <div class="mx-auto">
            <img src="" alt="ImagenVehiculo" width="64px" height="64px">
            <div class="list-group-item">
              <h6 class="text-success">Precio por día: <s:property value="precioxdia"></s:property></h6>
            </div>
            <div class="list-group-item">
              <h6 class="text-success">Detalles</h6>
              <h6>Transmisión: <s:property value="transmision.getValue()"></s:property></h6>
              <h6>Pasajeros: <s:property value="cantpasajeros"></s:property></h6>
              <h6>Extras: <s:property value="extras.getValue()"></s:property></h6>
            </div>
          </div>
        </div>
      </div>
      </s:iterator>


      <div class="col-md-7 order-md-2">
        <div class='alert alert-success'>
          <strong>¿Aún no has iniciado sesión?</strong><p>Puedes iniciar sesión para completar tus datos personales con tu perfil o crea una cuenta para estar en contacto contigo.</p>
        </div>
         <h4 class="mb-3">Datos personales</h4>
        <s:form  theme="simple" cssClass="needs-validation" action = "reservacion_vehiculo" id="registration_form" method = "post">
          <div class="row">
            <div class="col-md-4 mb-3">
              <label for="id">Cédula</label>
              <s:textfield type = "text" cssClass="form-control" id="id" name = "cr.id_cliente" placeholder="Cédula" required="required"></s:textfield>
              <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="firstname">Nombre</label>
              <s:textfield type = "text" cssClass="form-control" id="firstname" name = "cr.nombre" placeholder="Nombre" required="required"></s:textfield>
              <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="lastName">Apellidos</label>
              <s:textfield type = "text" cssClass="form-control" id="lastName" name = "cr.apellido" placeholder="Apellidos" required="required"></s:textfield>
              <!--<input type="text" class="form-control" id="lastName" placeholder="" value="" required="">-->
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="phone">Teléfono</label>
              <s:textfield type = "text" cssClass="form-control" id="phone" name = "cr.telefono" placeholder="12345678" required="required"></s:textfield>
              <!--<input type="text" class="form-control" id="phone" placeholder="" value="" required="">-->
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">Correo electrónico</label>
            <s:textfield type = "text" cssClass="form-control" id="email" name = "cr.correo" placeholder="ticobooking@correo.com" required="required"></s:textfield>
            <!--<input type="email" class="form-control" id="email" placeholder="" value="" required="">-->
            <div class="invalid-feedback">
              Este campo es requerido.
            </div>
          </div>

          <div class="mb-3">
            <label for="repeatemail">Repita su correo electrónico</label>
            <input type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required="">
            <div class="invalid-feedback">
              Este campo es requerido.
            </div>
          </div>
          <hr class="mb-4">

          <h4 class="mb-3">Datos de reservación</h4>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="check-in">Fecha de Pick-up</label>
              <s:textfield type = "date" cssClass="form-control" id="check-in" name = "cr.fentrada" placeholder="Fecha de entrada" required="required"></s:textfield>
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="check-in">Hora de Pick-up</label>
              <s:textfield type = "time" cssClass="form-control" id="check-in" name = "cr.hentrada" placeholder="Hora de entrada" required="required"></s:textfield>
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="check-out">Fecha de Drop-off</label>
              <s:textfield type = "date" cssClass="form-control" id="check-in" name = "cr.fsalida" placeholder="Fecha de entrada" required="required"></s:textfield>
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="check-in">Hora de Drop-off</label>
              <s:textfield type = "time" cssClass="form-control" id="check-in" name = "cr.hsalida" placeholder="Fecha de entrada" required="required"></s:textfield>
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
          </div>

           <div class="mb-3">
            <label for="pick-place">Lugar de Pick-up / Drop-off</label>
           <s:textfield type = "text" cssClass="form-control" id="check-in" name = "cr.lugar" placeholder="Fecha de entrada" required="required"></s:textfield>
            <div class="invalid-feedback">
              Este campo es requerido.
            </div>
          </div>

          <hr class="mb-4">

          <button class="btn btn-success btn-lg btn-block" type="submit">Reservar</button>
        </s:form>
        
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
