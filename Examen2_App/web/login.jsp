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
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Iniciar Sesión</h2>
                <s:fielderror cssClass="error_form"/>
                <s:form theme="simple" cssClass="form-signin" action="login" method="post">
                    <label for="inputEmail">Correo Electrónico:</label>
                    <s:textfield type = "email" cssClass="form-control" id="inputEmail" name = "u.Correo" placeholder="ticobooking@correo.com" required="required"></s:textfield>
                        <label for="inputPassword">Contraseña:</label>
                    <s:textfield type = "password" cssClass="form-control" id="inputPassword" name = "u.Password" placeholder="Contraseña" required="required"></s:textfield>
                        <center>
                        <s:submit type="submit" data-role="button" data-theme="b" data-inline="true" value="Ingresar"></s:submit><br>
                            <div class="checkbox mb-3">
                                <label>
                                    <a href="pre_forgot.jsp" style="text-decoration: none;">¿Olvidaste tu contraseña?</a>
                                </label>
                            </div>
                            <hr class="mb-3">

                            <h6 class="mt-4">¿Aún no tienes una cuenta?</h6>
                            <a class="btn btn-success mt-1 mb-5" style="max-width:200px; color:#fff; text-decoration: none;" href="pre_register.jsp">Regístrate</a><br>
                        </center>
                </s:form>    
            </div>	
            <br>
            <br>
            <br>
            <br>

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
            
            <div data-role="footer" data-theme="b">
                <center>
                    <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>

        </div>



    </body>
</html>
