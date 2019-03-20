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
        
        <div class="container">
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
                <h2>Reservación</h2>
                <p class="lead">Llena los espacios que se solicitan abajo para completar la reservación.</p>
            </div>
            
            <div class="row">
                <div class="col-md-4 order-md-1">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-muted">Park Inn San Jose by Radisson</span>
                        <span class="badge badge-primary badge-pill">Hotel</span>
                    </h4>
                    <div class="mb-3">
                        <div class="mx-auto">
                            <img src="" alt="ImagenLugar" width="64px" height="64px">
                            <div class="list-group-item">
                                <h6 class="text-success">Ubicación</h6>
                                <h6>Calle Central y Tercera Av 15, Barrio Tournon, 00001 San José, Costa Rica</h6>
                            </div>
                            <div class="list-group-item">
                                <h6 class="text-success">Detalles</h6>
                                <h6>Está en nuestra selección para San José</h6>
                                <h6>Tiene 2 restaurantes</h6>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-md-7 order-md-2">
                    <div class='alert alert-success'>
                        <strong>¿Aún no has iniciado sesión?</strong><p>Puedes iniciar sesión para completar tus datos personales con tu perfil o crea una cuenta para estar en contacto contigo.</p>
                    </div>
                    <h4 class="mb-3">Datos personales</h4>
                    <s:form  theme="simple" cssClass="needs-validation" action = "registrar_reservacion" id="registration_form" method = "post">
                        <div style="display:none">
                            <input type="text" class="form-control" name="r.id_hospedaje" value="<s:property value='id_hotel'/>" >
                        </div>
                         <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstname">Nombre</label>                           
                                    <input type="text" class="form-control" name = "r.nombre" id="firstName" placeholder="Nombre" value='<s:property value="#session.session_nombre"/>' required="">
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Apellidos</label>                                    
                                <input type="text" class="form-control" name = "r.apellido" id="lastName" placeholder="Apellidos" value='<s:property value="#session.session_apellido"/>' required="">
                                <div class="invalid-feedback">
                                    Este campo es requerido.
                                </div>
                            </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="id">Cédula</label>                              
                                    <input type="text" class="form-control" name = "r.id_cliente" id="firstName" placeholder="Cédula" value='<s:property value="#session.session_cedula"/>' required="">
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="phone">Teléfono</label>                                
                                    <input type="text" class="form-control" name = "r.telefono" id="phone" placeholder="12345678" value='<s:property value="#session.session_telefono"/>' required="">
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="email">Correo electrónico</label>                                                            
                                <input type="email" class="form-control" name = "r.correo" id="email" placeholder="ticobooking@correo.com" value='<s:property value="#session.session_correo"/>' required="">
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
                                    <label for="check-in">Fecha de entrada</label>
                                <s:textfield type = "date" cssClass="form-control" id="check-in" name = "r.entrada" placeholder="Fecha de entrada" required="required"></s:textfield>
                                    <!--<input type="date" class="form-control" id="check-in" placeholder="" required="">-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="check-out">Fecha de salida</label>
                                <s:textfield type = "date" cssClass="form-control" id="check-out" name = "r.salida" placeholder="Fecha de salida" required="required"></s:textfield>
                                    <!--<input type="date" class="form-control" id="check-out" placeholder="" required="">-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="persons">Cantidad de huéspedes</label>              
                                <s:select cssClass="custom-select d-block w-100" headerKey="-1" headerValue="Cantidad" list="{1,2,3,4,5,6,7,8,9}" id="persons" name="r.cantidad"></s:select>
                                    <!--<select class="custom-select d-block w-100" id="persons" required="">-->
                                    <div class="invalid-feedback">
                                        Seleccione una opción.
                                    </div>
                                </div> 
                            </div>
                            <hr class="mb-4">
                            
                            <h4 class="mb-3">Envía alguna petición/comentario</h4>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="comments">Comentarios</label>
                                    <textarea id="comments" class="form-control"></textarea>
                                    <small class="text-muted">Las peticiones especiales no se pueden garantizar, pero haremos todo lo posible para atender tu solicitud de la mejor manera. 
                                        ¡También puedes enviarnos tu petición especial cuando hayas realizado la reserva!</small>
                                </div>
                            </div> 
                            
                            <hr class="mb-4">
                            <button class="btn btn-success btn-lg btn-block" name="submitType" type="submit">Reservar</button>
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
