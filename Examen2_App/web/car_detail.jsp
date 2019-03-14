<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TicoBooking - Detalles del transporte</title>
    <link rel="stylesheet" href="css/theme/customAB.css" />
    <link rel="stylesheet" href="css/theme/jquery.mobile.icons.min.css" />
    <link rel="stylesheet" href="jqmobile/demos/css/themes/default/jquery.mobile.structure-1.4.5.min.css">
    <link rel="stylesheet" href="jqmobile/demos/_assets/css/jqm-demos.css">
    <link rel="shortcut icon" href="./img/medicine.png">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="jqmobile/demos/js/jquery.js"></script>
    <script src="jqmobile/demos/_assets/js/index.js"></script>
    <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
    <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking - Detalles del transporte">

        <div data-role="header" data-theme="b">
            <img src="./img/logos/logo8.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:100px; heigth:800px;"><br>
            <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
            <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
        </div><!-- /header -->

        <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
            <h2 class="ui-title" data-role="heading" style="font-weight: 700; color:#0071bc;">Detalles</h2>

            <div class="ui-body ui-body-a ui-corner-all">
                <h2>Ford Fiesta</h2>
                <small>Enterprise Rent-A-Car</small><br>
                <small>Compacto</small>
                <img src="./img/info.png" alt="rss" style="display: block; margin: 30px auto;"><br>
            </div>

            <form>
                <div class="ui-grid-b ui-responsive center" style="margin: 0 auto;">
                    <div class="ui-block-b">
                        <input type="button" data-icon="check" data-iconpos="right" value="Reservar">
                    </div>
                </div>
            </form>

            <div class="ui-grid-a ui-responsive">
                <div class="ui-block-a" data-theme="b" style="padding-right: 10px; margin-bottom: 10px;">
                    <div class="ui-bar ui-bar-a">
                        <h3>Descripción</h3>
                        <hr/>
<!--                         Este vehículo contiene transmisión manual, kilometraje es ilimitado, puede llevar hasta 5 pasajeros, aire acondicionado y 4 puertas, todo para atender tus necesidades de transporte.<br><br> -->
                        Se debe recoger el vehículo en el Aeropuerto del Prat, Prat De Llobregat El, ESP 08820 entre las 
                        7:00 am - 11:59 pm, de igual forma se debe dejar en el mismo lugar a las mismas horas de operación<br><br>

                        Los conductores menores de 30 años o mayores de 70 años deben pagar una tarifa adicional.<br><br>
                    </div>

                </div>
                <div class="ui-block-b" data-theme="b" style="margin-bottom: 10px;">
                    <div class="ui-bar ui-bar-a">
                        <h3>Servicios incluidos</h3>
                        <hr/>
                        <ul data-role="listview">
                            <li>Transmisión manual</li>
                            <li>kilometraje ilimitado</li>
                            <li>Capacidad de 5 pasajeros</li>
                            <li>Aire acondicionado</li>
                            <li>4 puertas</li>
                            <li>Reserve ahora, pague después</li>
                        </ul>

                    </div>

                </div>
            </div>

            <ul data-role="listview" data-inset="true">
                <li data-role="list-divider">Reseñas 
                    <span class="ui-li-count">3</span>
                </li>
                <li>
                    <h2>Laura</h2>
                    <p>“La ubicacion es EXCELENTE”</p>
                    <span class="ui-li-count">10</span>
                    <p class="ui-li-aside">
                        <strong>6:24</strong>
                    PM</p>
                </li>
                <li>
                    <h2>Marc</h2>
                    <span class="ui-li-count">10</span>
                    <p>
                        "Estuvimos en otra ocasión durante el viaje a Costa Rica y fue igual que la primera vez: simplemente perfecto. No os va a defraudar.”
                    </p>
                    <p class="ui-li-aside"><strong>10:11</strong>AM</p>
                </li>
                <li>
                    <h2>Francela</h2>
                    <span class="ui-li-count">10</span>
                    <p>
                        “La ubicación es excelente .Muy buen room service este se encuentra disponible 24/7 la comida excelente también."
                    </p>
                    <p class="ui-li-aside">
                        <strong>6:24</strong>
                    PM</p>
                </li>
            </ul>

        </div><!-- /content -->

        <div data-role="panel" data-display="push" data-theme="b" id="nav-panel">

            <ul data-role="listview">
                <li data-icon="delete"><a href="#" data-rel="close">Cerrar Menú</a></li>
                <li><a href="index.jsp" rel="external">Inicio</a></li>

                <li data-role="list-divider">Datos Personales</li>
                <li><a href="update_user.action?submitType=updatedata&cedula=<s:property value="">Historial Médico</a></li>
                <li><a report_hist.action?submitType=loaddata&cedula=<s:property value="">Editar Perfíl</a></li> 

                <li data-role="list-divider">Servicios</li>
                <li><a href="serv" rel="external">Servicios Generales</a></li>
                <li><a href="paq" rel="external">Paquetes</a></li>

                <li data-role="list-divider">Consultas</li>
                <li><a href="viewrecords" rel="external">Médicos</a></li>
                <li><a href="consult" rel="external">Consultorios</a></li> 
                <li><a href="espec" rel="external">Especialidades</a></li> 

            </ul>
        </div>

        <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
            <center>
                <img src="./img/logos/logo8.png" alt="rss" style="display: block; margin: 0 auto; padding-top:1%; width:100px; heigth:800px;"><br>
                <p class="copyright">© Copyright 2019</p>
            </center>
        </div>
    </div>
</body>
</html>


