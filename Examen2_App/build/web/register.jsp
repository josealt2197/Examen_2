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
        
                <style>            
            /* The message box is shown when the user clicks on the password field */
            #message {
                display:none;
                background: #f1f1f1;
                border: solid 2px #26a69a;
                border-radius: 10px;
                color: #000;
                position: relative;
                padding: 10px;
                padding-left: 15px;
                margin-top: 2px;
            }
            
            #message p {
                padding: 2px 10px;
                font-size: 13px;
            }
            
            /* Add a green text color and a checkmark when the requirements are right */
            .valid {
                color: #28a745;
            }
            
            .valid:before {
                position: relative;
                left: -15px;
                content: "✔";
            }
            
            /* Add a red text color and an "x" when the requirements are wrong */
            .invalid {
                color: #AC2A2A;
            }
            
            .invalid:before {
                position: relative;
                left: -15px;
                content: "✖";
            }
        </style>
    </head>
    <body>
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking">

            <div data-role="header" data-theme="b">
                <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h1 style="color:#28A745;">TicoBooking</h1>
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Registro de Usuarios</h2>
                <p><strong>Llena los espacios que se solicitan abajo para completar el registro de tu cuenta.</strong></p>
                <hr>
                <s:form  theme="simple" cssClass="needs-validation" action = "registrar" method = "post">

                    <div>
                        <label for="lastName">Cédula</label>
                        <s:textfield type = "number" cssClass="form-control" id="form_cedula" name = "u.cedula" placeholder="Cédula" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Una Cédula valida es requerida.
                            </div>
                        </div>

                        <div>
                            <label for="firstName">Nombre</label>
                        <s:textfield type = "text" cssClass="form-control" id="firstName" name = "u.nombre" placeholder="Nombre" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Un nombre valido es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="firstName">Apellidos</label>
                        <s:textfield type = "text" cssClass="form-control" id="apellidos" name = "u.apellido" placeholder="Apellidos" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Un nombre valido es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="email">Correo Electrónico</label>
                        <s:textfield type="email" cssClass="form-control" id="email" name = "u.correo" placeholder="ticobooking@correo.com" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Un Correo Electrónico valido es requerido.
                            </div>
                        </div>

                        <div>
                            <div>
                                <label for="form_password">Contraseña</label><br>
                            <s:textfield type = "password" cssClass="form-control" id="password" name = "u.password" placeholder="Contraseña" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></s:textfield>
                                <!--<input type="password" class="form-control" id="pass" placeholder="Contraseña" required>-->
                                <div class="invalid-feedback">
                                    Este campo es requerido.
                                </div>
                                <div id="message">
                                    <h6>La contraseña debe tener:</h6>
                                    <p id="letter" class="invalid">Letras <b>minusculas</b></p>
                                    <p id="capital" class="invalid">Una letra <b>mayuscula</b></p>
                                    <p id="number" class="invalid">Un <b>número</b></p>
                                    <p id="length" class="invalid">Un mínimo de <b>8 caracteres</b></p>
                                </div>
                                <script>
                
                                var myInput = document.getElementById("password");
                                var letter = document.getElementById("letter");
                                var capital = document.getElementById("capital");
                                var number = document.getElementById("number");
                                var length = document.getElementById("length");

                                // When the user clicks on the password field, show the message box
                                myInput.onfocus = function() {
                                    document.getElementById("message").style.display = "block";
                                }

                                // When the user clicks outside of the password field, hide the message box
                                myInput.onblur = function() {
                                    document.getElementById("message").style.display = "none";
                                }

                                // When the user starts to type something inside the password field
                                myInput.onkeyup = function() {
                                    // Validate lowercase letters
                                    var lowerCaseLetters = /[a-z]/g;
                                    if(myInput.value.match(lowerCaseLetters)) { 
                                        letter.classList.remove("invalid");
                                        letter.classList.add("valid");
                                    } else {
                                        letter.classList.remove("valid");
                                        letter.classList.add("invalid");
                                    }

                                    // Validate capital letters
                                    var upperCaseLetters = /[A-Z]/g;
                                    if(myInput.value.match(upperCaseLetters)) { 
                                        capital.classList.remove("invalid");
                                        capital.classList.add("valid");
                                    } else {
                                        capital.classList.remove("valid");
                                        capital.classList.add("invalid");
                                    }

                                    // Validate numbers
                                    var numbers = /[0-9]/g;
                                    if(myInput.value.match(numbers)) { 
                                        number.classList.remove("invalid");
                                        number.classList.add("valid");
                                    } else {
                                        number.classList.remove("valid");
                                        number.classList.add("invalid");
                                    }

                                    // Validate length
                                    if(myInput.value.length >= 8) {
                                        length.classList.remove("invalid");
                                        length.classList.add("valid");
                                    } else {
                                        length.classList.remove("valid");
                                        length.classList.add("invalid");
                                    }
                                }
                            </script> 
                            </div>

                        <div>
                            <label for="pass2">Confirmar Contraseña</label>
                            <input type="password" cssClass="form-control" id="pass2" placeholder="Confirmar Contraseña" required>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="form_date">Fecha de Nacimiento</label>
                        <s:textfield type="date" cssClass="form-control" id="form_date" name = "u.fechanacimiento" placeholder="Fecha de nacimiento" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <div>
                            <label for="form_phone">Teléfono</label>
                        <s:textfield type="number" cssClass="form-control" id="form_phone" name = "u.telefono" placeholder="85602135" required="required"></s:textfield>
                            <div class="invalid-feedback">
                                Este campo es requerido.
                            </div>
                        </div>

                        <hr class="mb-4">
                    <s:submit cssClass="btn btn-success" style="color:#fff; text-decoration: none;" type="submit" value="Registrarse"></s:submit>
                </s:form> 

                <br>
                <br>
            </div>

            <div data-role="panel" data-display="push" data-theme="b" id="nav-panel">
                <ul data-role="listview">
                    <li data-icon="delete"><a href="#" data-rel="close">Cerrar Menú</a></li>
                    <li><a href="index.jsp" rel="external">Inicio</a></li>
                    <li><a href="tipo_cambio.jsp" rel="external">Tipo de cambio</a></li>
                    <li><a href="ayuda.jsp" rel="external">Ayuda</a></li>
                </ul>
            </div>

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

