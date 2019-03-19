<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

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
                <s:form  theme="simple" cssClass="needs-validation" action = "registrar" method = "post">

                    <div>
                        <label for="firstName">Nombre Completo</label>
                        <s:textfield type="text" cssClass="form-control" placeholder="Nombre y Apellidos" value="" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Un nombre valido es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="lastName">Cédula</label>
                        <s:textfield type="text" cssClass="form-control" id="lastName" placeholder="Número de Cédula" value="" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Una Cédula valida es requerida.
                            </div>
                        </div>

                        <div>
                            <label for="email">Correo Electrónico</label>
                        <s:textfield type="email" cssClass="form-control" id="email" placeholder="ticobooking@correo.com" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Un Correo Electrónico valido es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="pass">Contraseña</label>
                        <s:textfield type="password" cssClass="form-control" id="pass" placeholder="Contraseña" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="pass2">Confirmar Contraseña</label>
                            <input type="password" cssClass="form-control" id="pass2" placeholder="Confirmar Contraseña" required>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="birth">Fecha de Nacimiento</label>
                        <s:textfield type="date" cssClass="form-control" id="pass2" placeholder="Confirmar Contraseña" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="phone">Teléfono</label>
                        <s:textfield type="number" cssClass="form-control" placeholder="85602135" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <hr class="mb-4">
                    <s:submit cssClass="btn btn-success" style="color:#fff; text-decoration: none;" type="submit" value="Registrarse"></s:submit>
                </s:form> 

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

