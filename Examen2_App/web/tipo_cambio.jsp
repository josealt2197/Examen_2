<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>  
<%@ page import = "controller.*" %>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">

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
            </div>

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h1 class="ui-title" role="heading" style="color:#28A745;">Tipo de Cambio</h1>

                <hr><hr>

                <div class="ui-grid-a ui-responsive">
                    <div class="ui-block-a">
                        <div class="ui-body ui-body-d">                    
                            <center>
                                <div class="mx-auto">
                                    <div class="convertor-card">
                                        <div class="base">
                                            <span class="name">Compra</span>
                                            <div class="value-section">
                                                <span class="symbol">₡</span>
                                                <span class="value"><%= controller_cambio.getCambioCompra()%></span>                            
                                            </div>
                                            <span class="abbr">Banco</span>
                                        </div>
                                        <div class="converted">
                                            <span class="name">Venta</span>
                                            <div class="value-section">
                                                <span class="symbol">₡</span>
                                                <span class="value"><%= controller_cambio.getCambioVenta()%></span>                            
                                            </div>
                                            <span class="abbr">Central</span>
                                        </div>
                                    </div>
                                </div>
                            </center>
                        </div>
                        <hr><hr>
                    </div>
                </div>


            </div>

            <div data-role="panel" data-display="push" data-theme="b" id="nav-panel">
                <ul data-role="listview">
                    <li data-icon="delete"><a href="#" data-rel="close">Cerrar Menú</a></li>
                    <li>
                    <s:if test="%{#session.session_correo == null}">
                        <a rel="external" href="login.jsp">Ingresar</a>
                    </s:if>
                    <s:elseif test="%{#session.session_correo != null}">
                        <a rel="external" href="logout">Salir</a>
                    </s:elseif>
                    </li>
                    <li><a href="index.jsp" rel="external">Inicio</a></li>
                    <li><a href="tipo_cambio.jsp" rel="external">Tipo de cambio</a></li>
                    <li><a href="ayuda.jsp" rel="external">Ayuda</a></li>
                </ul>
            </div>

            <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
                <center>
                    <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>
        </div>
    </body>
</html>
