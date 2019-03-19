<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
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
        <link rel="shortcut icon" href="./img/medicine.png">

        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">

        <script src="jqmobile/demos/js/jquery.js"></script>
        <script src="jqmobile/demos/_assets/js/index.js"></script>
        <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
    </head>
    <body>
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking">

            <div data-role="header" data-theme="b">
                <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
                <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" data-role="heading" style="font-weight: 700; color:#0071bc;">Detalles</h2>

                <s:iterator  value="flight_info">
                    <div class="ui-body ui-body-a ui-corner-all">
                        <h4><s:property value="origen.getValue()"></s:property> - <s:property value="destino.getValue()"></s:property></h4>
                            <div class="text-center">
                                    <small><strong>Salida: </strong><s:property value="horasalida.getValue()"></s:property></small> ---
                            <small><strong>Llegada: </strong><s:property value="horallegada.getValue()"></s:property></small><br>

                                <img src="<s:property value="imagen.getValue()"></s:property>" width="250px" height="200px" alt="Imagen Vuelo" style="display: block; margin: 10px auto;"><br>
                            <h4>Costo: $<s:property value="costo.getValue()"></s:property></h4>
                            </div>
                        </div>

                        <form>
                            <div class="ui-grid-b ui-responsive center" style="margin: 0 auto;">
                                <div class="ui-block-b">
                                    <a class="btn btn-success btn-lg btn-block" style="margin: 20px auto; color:#fff;" type="submit" href="reservacion_vuelo.action?submitType=updatedata&id_vuelo=<s:property value="id"></s:property>">Reservar</a>
                                </div>
                            </div>
                        </form>

                        <div class="ui-grid-a ui-responsive">
                            <div class="ui-block-a" data-theme="b" style="padding-right: 10px; margin-bottom: 10px;">
                                <div class="ui-bar ui-bar-a">
                                    <h3>Descripción del vuelo</h3>
                                    <hr/>
                                    <h4>Número del Vuelo:</h4>
                                    <p><s:property value="vuelo.getValue()"></s:property></p>
                                    <h4>Avión del Vuelo:</h4>
                                    <p><s:property value="avion.getValue()"></s:property></p>
                                    <h4>Servicios:</h4>
                                    <p><s:property value="serviciosincluidos.getValue()"></s:property></p>
                                </div>

                            </div>
                            <div class="ui-block-b" data-theme="b" style="margin-bottom: 10px;">
                                <div class="ui-bar ui-bar-a">
                                    <h3>Detalles Generales</h3>
                                    <hr/>
                                    <ul data-role="listview">
                                        <li>Dirigido por: <s:property value="aerolinea.getValue()"></s:property></li>
                                    <li>Duración aproximada: <s:property value="duracion.getValue()"></s:property></li>
                                    <li>Fecha: <s:property value="fecha.getValue()"></s:property></li>
                                    </ul>

                                </div>

                            </div>
                        </div>
                </s:iterator>
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
                    <li><a href="tipo_cambio.jsp" rel="external">Tipo de cambio</a></li>
                    <li><a href="ayuda.jsp" rel="external">Ayuda</a></li>
                    <li><a href="login.jsp" rel="external">Ingresar</a></li>
                </ul>
            </div>

            <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
                <center>
                    <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>
        </div>
    </body>
</html>


