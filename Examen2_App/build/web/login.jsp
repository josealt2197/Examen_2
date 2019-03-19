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
    <script src="jqmobile/demos/js/jquery.js"></script>
    <script src="jqmobile/demos/_assets/js/index.js"></script>
    <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking">

        <div data-role="header" data-theme="b">
            <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
        </div><!-- /header -->

        <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Iniciar Sesión</h2>

            <s:form theme="simple" cssClass="form-signin" action="login" method="post">
                <label for="ident">Correo Electrónico:</label>
                <s:textfield type="text" name="u.cedula" value=""></s:textfield>
                <label for="password">Contraseña:</label>
                <s:textfield type="password" name="u.password" value=""></s:textfield>
                <center>
                    <a href="pre_register.jsp">Regístrate</a><br>
                    <s:submit type="submit" data-role="button" data-theme="b" data-inline="true" value="Ingresar"></s:submit>
                </center>
            </s:form>    
        </div>	
        <br>
        <br>
        <br>
        <br>
        <div data-role="footer" data-theme="b">
            <center>
                <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                <p class="copyright">© Copyright 2019</p>
            </center>
        </div>

    </div>



</body>
</html>
