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
            <h1 style="color:#28A745;">¿Quieres explorar Costa Rica?</h1>
            <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Tenemos lo que necesitas.</h2>


            <center>
                <form>
                    <select>
                        <option>¿Qué andas buscando?</option>
                        <option>Hospedaje</option>
                        <option>Vehículos</option>
                    </select>
                    <input type="text"  style="font-size: 1.2em; text-align: center" placeholder="¿Donde lo necesitas?">
                    <center>
                        <button type="submit" style="width:300px">Buscar</button>
                    </center>
                </form> 
            </center>
            <br><br>

            <hr>
            <br> 

            <div class="ui-body ui-body-a ui-corner-all">
                <center><img width="300px" src="img/bg-showcase-1.jpg"></center><br>
                <h3>¿Necesitas donde hospedarte?</h3>
                <p class="lead mb-0">Con nosotros estás en buenas manos: Tenemos opciones de hoteles para todos los gustos, con los mejores precios y en todo el país.</p>
            </div><br>

            <div class="ui-body ui-body-a ui-corner-all">
                <center><img width="300px" src="img/bg-showcase-2.jpg"></center><br>
                <h3>¿Necesitas transporte?</h3>
                <p class="lead mb-0">Nosotros te ayudamos. Te ofrecemos distintos vehículos, para que puedas conocer todas las provincias y llegar a tu destino esperado.</p>
            </div><br>


            <div data-demo-html="true" data-demo-css="#combined-heading-and-section">
                <div class="ui-corner-all custom-corners">
                    <div class="ui-bar ui-bar-a">
                        <h2>¿Necesitas ayuda?</h2>
                    </div>
                    <div class="ui-body ui-body-a">
                        <center><p>Visita nuestra sección de preguntas frecuentes.</p>
                        <button type="submit" style="width:300px">Ayuda</button></center>
                    </div>
                </div>
            </div>

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
