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
    <body class="bg-light">
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
                    <!--<form class="needs-validation" novalidate> -->
                    <s:form  theme="simple" cssClass="needs-validation" action = "registrar" id="registration_form" method = "post">
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label for="form_cedula">Cédula</label><br>
                                <s:textfield type = "number" cssClass="form-control" id="form_cedula" name = "u.cedula" placeholder="Cédula" required="required"></s:textfield>
                                    <!--<input type="text" class="form-control" id="lastName" placeholder="Número de Cédula" value="" required>-->
                                    <div class="invalid-feedback">
                                        Una Cédula valida es requerida.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="firstName">Nombre</label><br>
                                <s:textfield type = "text" cssClass="form-control" id="firstName" name = "u.nombre" placeholder="Nombre" required="required"></s:textfield>
                                    <!--<input type="text" class="form-control" id="firstName" placeholder="Nombre y Apellidos" value="" required>-->
                                    <div class="invalid-feedback">
                                        Un nombre valido es requerido.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="apellidos">Apellidos</label><br>
                                <s:textfield type = "text" cssClass="form-control" id="apellidos" name = "u.apellido" placeholder="Apellidos" required="required"></s:textfield>
                                    <!--<input type="text" class="form-control" id="lastName" placeholder="Número de Cédula" value="" required>-->
                                    <div class="invalid-feedback">
                                        Los apellidos son requeridos.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="form_email">Correo Electrónico</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                <s:textfield type = "email" cssClass="form-control" id="form_email" name = "u.correo" placeholder="ticobooking@correo.com" required="required"></s:textfield>
                                    <!--<input type="email" class="form-control" id="email" placeholder="ticobooking@correo.com" required>-->
                                    <div class="invalid-feedback" style="width: 100%;">
                                        Un Correo Electrónico valido es requerido.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mb-3">
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
                            
                            <div class="mb-3">
                                <label for="form_password2">Confirmar Contraseña</label><br>
                            <s:textfield type = "password" cssClass="form-control" id="form_password2" placeholder="Confirmar Contraseña" required="required"></s:textfield>
                                <!--<input type="password" class="form-control" id="pass2" placeholder="Confirmar Contraseña" required>-->
                                <div class="invalid-feedback">
                                    Este campo es requerido.
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="form_date">Fecha de Nacimiento</label>
                                <s:textfield type = "date" cssClass="form-control" id="form_date" name = "u.fechanacimiento" placeholder="Fecha de nacimiento" required="required"></s:textfield>
                                    <!--<input type="date" class="form-control" id="pass2" placeholder="Confirmar Contraseña" required>-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="form_phone">Teléfono</label><br>
                                <s:textfield type = "number" cssClass="form-control" id="form_phone" name = "u.telefono" placeholder="12345678" required="required"></s:textfield>
                                    <!--<input type="number" class="form-control" id="phone" placeholder="12345678" required>-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                            </div>
                            <hr class="mb-4">
                        <s:submit cssClass="btn btn-success btn-lg btn-block" type="submit" value="Registrarse"></s:submit>
                            <!--<button class="btn btn-success btn-lg btn-block" type="submit">Completar Registro</button>-->
                    </s:form> 
                </div>
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
                    'use strict';

                    window.addEventListener('load', function () {
                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.getElementsByClassName('needs-validation');

                        // Loop over them and prevent submission
                        Array.prototype.filter.call(forms, function (form) {
                            form.addEventListener('submit', function (event) {
                                if (form.checkValidity() === false) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                }
                                form.classList.add('was-validated');
                            }, false);
                        });
                    }, false);
                }());
            </script>
    </body>
</html>

