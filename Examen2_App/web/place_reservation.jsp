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
            <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
            <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
        </div><!-- /header -->

        <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
            <h1 class="ui-title" role="heading" style="color:#28A745;">Reservación</h1>
            <p>Llena los espacios que se solicitan abajo para completar la reservación.</p>

            <hr><hr>

            <div class="ui-grid-a ui-responsive">
                <div class="ui-block-a">
                    <div class="ui-body ui-body-d">                    

                        <div>
                            <div>
                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Park Inn San Jose by Radisson</h1><br>
                                <div>
                                    <div>
                                        <center>
                                            <img width="450px" src="img/bg-showcase-2.jpg"><br>
                                        </center>
                                        <ul style="list-style-type: none;">
                                            <h2>Ubicación</h2>
                                            <li>Calle Central y Tercera Av 15, Barrio Tournon, 00001 San José, Costa Rica</li>
                                        </ul>
                                        <ul style="list-style-type: none;" >
                                            <h2>Detalles</h2>
                                            <li>Está en nuestra selección para San José</li>
                                            <li>Tiene 2 restaurantes</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr><hr>
                </div>
                
                <div class="ui-block-b">
                    <div class="ui-body ui-body-d">

                        <div class='alert alert-success'>
                            <strong>¿Aún no has iniciado sesión?</strong><p>Puedes iniciar sesión para completar tus datos personales con tu perfil o crea una cuenta para estar en contacto contigo.</p>
                        </div>
                        <h4 class="mb-3">Datos personales</h4>
                        <form class="needs-validation" novalidate="">
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="firstName">Nombre</label>
                                    <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="lastName">Apellidos</label>
                                    <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="phone">Teléfono</label>
                                    <input type="text" class="form-control" id="phone" placeholder="" value="" required="">
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="email">Correo electrónico</label>
                                <input type="email" class="form-control" id="email" placeholder="ticobooking@correo.com" value="" required="">
                            </div>

                            <div class="mb-3">
                                <label for="repeatemail">Repita su correo electrónico</label>
                                <input type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required="">
                            </div>
                            <hr class="mb-4">

                            <h4 class="mb-3">Datos de reservación</h4>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="check-in">Fecha de entrada</label>
                                    <input type="date" class="form-control" id="check-in" placeholder="" required="">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="check-out">Fecha de salida</label>
                                    <input type="date" class="form-control" id="check-out" placeholder="" required="">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="persons">Cantidad de huéspedes</label>
                                    <select class="custom-select d-block w-100" id="persons" style="max-width:100px;" required="">
                                        <option value="">...</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
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
                            <center>
                                <button class="btn btn-success btn-lg btn-block" style="max-width:200px;" type="submit">Reservar</button>
                            </center>
                        </form>


                    </div> 
                </div>
            </div><!-- /grid-a -->

        </div><!-- /content -->

        <div data-role="panel" data-display="push" data-theme="b" id="nav-panel">

            <ul data-role="listview">
                <li data-icon="delete"><a href="#" data-rel="close">Cerrar Menú</a></li>
                <li><a href="index.jsp" rel="external">Inicio</a></li>
                <li><a href="index.jsp" rel="external">Hospedaje</a></li>
                <li><a href="index.jsp" rel="external">Vehículos</a></li>
                <li><a href="index.jsp" rel="external">Ayuda</a></li>
            </ul>
        </div>

        <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
            <center>
                <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                <p class="copyright">© Copyright 2019</p>
            </center>
        </div>
    </div><!-- /page1 -->

</body>
</html>
