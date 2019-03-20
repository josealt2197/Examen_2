<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>TicoBooking - Detalles del alojamiento</title>
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
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking - Detalles del alojamiento">

            <div data-role="header" data-theme="b">
                <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
                <s:if test="%{#session.session_correo != null}">
                    <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" data-role="heading" style="font-weight: 700; color:#0071bc;">Detalles</h2>
                <s:iterator  value="hotel_info"> 
                    <div class="ui-body ui-body-a ui-corner-all">
                        <h2><s:property value="NombreHos.getValue()"></s:property></h2>
                        <i class="fas fa-map-marker-alt pr-2" style="color: #28a745;"></i><small><s:property value="UbicacionExacta.getValue()"></s:property></small><br>
                        <span class="badge badge-primary"><s:property value="Tipo.getValue()"></s:property></span>
                        <span class="badge badge-success">Ideal para <s:property value="CantidadHuespedes"></s:property> viajeros</span>
                        <i class="fas fa-money-bill pl-2" style="color: #4caf50; margin-top: 15px;"></i> ₡ <s:property value="Precio"></s:property>
                        <img src="<s:property value="ImagenDetail.getValue()"></s:property>" width="300px" height="250px" alt="Imagen" style="display: block; margin: 30px auto;"><br>
                        </div>

                        <form>
                            <div class="ui-grid-b ui-responsive center" style="margin: 0 auto;">
                                <div class="ui-block-b">
                                    <a class="btn btn-success btn-lg btn-block" style="margin: 20px auto; color:#fff;" type="submit" href="registrar_reservacion.action?submitType=load&id_hotel=<s:property value="id"></s:property>">Reservar</a>
                                </div>
                            </div>
                        </form>

                        <div class="ui-grid-a ui-responsive">
                            <div class="ui-block-a" data-theme="b" style="padding-right: 10px; margin-bottom: 10px;">
                                <div class="ui-bar ui-bar-a">
                                    <h3>Descripción</h3>
                                    <hr/>
                                    <br><p><s:property value="DescripcionHos.getValue()"></s:property></p><br>
                                </div>

                            </div>
                            <div class="ui-block-b" data-theme="b" style="margin-bottom: 10px;">
                                <div class="ui-bar ui-bar-a">
                                    <h3>Servicios incluidos</h3>
                                    <hr/>
                                    <ul data-role="listview">
                                        <li><p><s:property value="ServiciosIncluidos.getValue()"></s:property></p></li>
                                        <!--<li>Traslado aeropuerto</li>
                                            <li data-icon="check">Centro de fitness bueno</li>
                                            <li>Habitaciones para no fumadores</li>
                                            <li>Parking gratis</li>
                                            <li>Restaurante</li>
                                            <li>Bar</li>
                                            <li>Muy buen desayuno</li>-->
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
                        <s:if test="%{#session.session_correo == null}">
                        <li><a href="login.jsp" rel="external">Iniciar sesión</a></li>
                        </s:if>
                    <li><a href="index.jsp" rel="external">Inicio</a></li>
                    <li><a href="tipo_cambio.jsp" rel="external">Tipo de cambio</a></li>
                    <li><a href="ayuda.jsp" rel="external">Ayuda</a></li>
                </ul>
            </div>

            <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
                <center>
                    <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;">
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>
        </div>
    </body>
</html>


