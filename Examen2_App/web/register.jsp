<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TicoBooking</title>
    <link rel="stylesheet" href="css/theme/customAB.css" />
    <link rel="stylesheet" href="css/theme/jquery.mobile.icons.min.css" />
    <link rel="stylesheet" href="jqmobile/demos/css/themes/default/jquery.mobile.structure-1.4.5.min.css">
    <link rel="stylesheet" href="jqmobile/demos/_assets/css/jqm-demos.css">
    <link rel="shortcut icon" href="./img/costa-rica64.png">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <script src="jqmobile/demos/js/jquery.js"></script>
    <script src="jqmobile/demos/_assets/js/index.js"></script>
    <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking">

        <div data-role="header" data-theme="b">
            <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
        </div><!-- /header -->

        <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
            <h1 style="color:#28A745;">TicoBooking</h1>
            <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Registro de Usuarios</h2>
            <p><strong>Llena los espacios que se solicitan abajo para completar el registro de tu cuenta.</strong></p>
            <hr>
            <form>

              <label for="firstName">Nombre Completo</label>
              <input type="text" id="firstName" placeholder="Nombre y Apellidos" value="" required>

              <label for="lastName">Cedula</label>
              <input type="text" id="lastName" placeholder="Número de Cédula" value="" required>

              <label for="email">Correo Electrónico</label>
              <input type="email" id="email" placeholder="ticobooking@correo.com" required>

              <label for="pass">Contraseña</label>
              <input type="password" id="pass" placeholder="Contraseña" required>

              <label for="pass2">Confirmar Contraseña</label>
              <input type="password" id="pass2" placeholder="Confirmar Contraseña" required>

              <label for="birth">Fecha de Nacimiento</label>
              <input type="date" id="pass2" placeholder="Confirmar Contraseña" required>

              <label for="phone">Teléfono</label>
              <input type="number" id="phone" placeholder="12345678" required>

              <hr>
              <button type="submit">Completar Registro</button>
          </form>

          <br>
          <br>
      </div><!-- /content -->

      <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a footer-btm" role="contentinfo">
        <center>
            <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
            <p class="copyright"> © Copyright 2019</p>
        </center>
    </div>



</div><!-- /page -->

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

