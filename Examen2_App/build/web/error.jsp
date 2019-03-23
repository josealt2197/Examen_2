<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#0071bc;">¡Vaya!</h2>

                <div class="pt-menu">
                    <div class="sign-in-body" style="background-color: transparent;">
                        <form class="form-redirect-error">
                            <h1 class="text-red">TicoBooking</h1>
                            <h3 class="mb-3 font-weight-normal text-green">¡Parece que hubo un error en el proceso!</h3>
                            <center>
                                <svg id="successAnimation" class="animated" xmlns="http://www.w3.org/2000/svg" width="70" height="70" viewBox="0 0 90.27 90.27">
                                <circle id="successAnimationCircle" cx="45.14" cy="45.14" r="45.14"/>
                                <g>
                                <rect x="21.77" y="43.49" width="46.74" height="3.36" transform="translate(-18.72 45.15) rotate(-45)"/>
                                <rect x="43.47" y="21.81" width="3.36" height="46.74" transform="translate(-18.72 45.16) rotate(-45)"/>
                                </g>
                                </svg>
                            </center>
                            <div class="checkbox mb-3">
                                <center>
                                    <h5 style="margin-top: 20px;">
                                        <a class="btn-error" style="margin: 30px auto; color:#fff;" onclick="location.href = 'index.jsp'">Volver al inicio</a>
                                    </h5>
                                </center>
                            </div>
                        </form>
                    </div>
                </div>

            </div><!-- /content -->

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
