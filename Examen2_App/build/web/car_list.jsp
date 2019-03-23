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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

        <script src="jqmobile/demos/js/jquery.js"></script>
        <script src="jqmobile/demos/_assets/js/index.js"></script>
        <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="panel-responsive-page1" data-title="TicoBooking">

            <div data-role="header" data-theme="b">
                <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:175px;"><br>
                <a href="#nav-panel" data-icon="bars" data-iconpos="notext">Menú</a>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Realizar otra búsqueda.</h2>


                <center>
                    <div class="form-row ">
                        <div class="col-md-6 mx-auto">
                            <h4>¿Dónde necesitas el vehículo?</h4><br>
                            <input type="text" class="form-control form-control-lg" id="search-criteria" placeholder="¿Dónde necesitas el vehículo?" title="Digite un lugar"><br/>
                        </div><br>
                    </div>
                    <div class="form-row mx-auto">
                        <div class="col-md-4 mx-auto">
                            <br><button id="search" class="btn btn-block btn-lg btn-success">Buscar Vehículos</button>
                        </div>
                    </div>
                </center>
                <br><br>

                <hr>
                <br> 

                <s:iterator value="car_list">
                    <div class="car-data">
                        <div class="ui-corner-all custom-corners">
                            <div class="ui-bar ui-bar-a">
                                <h2>Transporte</h2>
                            </div>
                            <div class="ui-body ui-body-a">
                                <div class="ui-grid-a ui-responsive">
                                    <div class="ui-block-a">
                                        <div class="ui-body ui-body-d">                    
                                            <center>
                                                <img width="290px" height="200px" src="<s:property value="imagen.getValue()"></s:property>" alt="Imagen vehículo"><br>
                                                </center>
                                            </div>
                                        </div>
                                        <div class="ui-block-b">
                                            <div class="ui-body ui-body-d">
                                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;"><s:property value="modelo.getValue()"></s:property></h1>
                                                <div class="mb-1">
                                                    <span class="badge badge-primary"><s:property value="empresa.getValue()"></s:property></span>
                                                <span class="badge badge-success"><s:property value="tipo.getValue()"></s:property></span>
                                                <span class="badge badge-danger"><s:property value="ubicacion.getValue()"></s:property></span><br><br>
                                                <i class="pr-2 fas fa-car-side" style="color: #28a745;"></i><span>Para <s:property value="cantpasajeros"></s:property> pasajeros</span><br>
                                                <i class="pr-2 fas fa-cogs" style="color: #28a745;"></i><span><s:property value="transmision.getValue()"></s:property></span><br>
                                                </div>
                                                <div class="mb-1">
                                                    <i class="pr-2 fas fa-wind" style="color: #28a745;"></i><span><s:property value="servicios.getValue()"></s:property></span>
                                                </div>

                                                <div class="mb-1">
                                                    <span style="width: 100%; height: 5px; display: flex; align-items: center; background-color:#7CC543; margin: 0 auto; margin-top: 15px;"></span><br>
                                                    <i class="pr-2 fas fa-money-bill" style="color: #28a745;"></i><span>$ <s:property value="precioxdia"></s:property> por día</span> 
                                                </div>
                                                <center>
                                                    <a class="btn btn-success" style="margin: 20px auto; color:#fff; text-decoration: none;" href="viewcar_detail.action?idVehiculo=<s:property value="id"></s:property>">Leer más</a>
                                                </center>
                                            </div> 
                                        </div>
                                    </div><!-- /grid-a -->
                                </div>

                                <br><hr><br>              
                            </div>


                        </div>                       
                </s:iterator>

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

            <script>
                $('#search').click(function () {
                    var filter = $("#search-criteria").val();
                    $('.car-data').each(function () {
                        $(this).find(".custom-corners:not(:contains('" + filter + "'))").hide();
                        $(this).find(".custom-corners:contains('" + filter + "')").show();
                    });
                    $.expr[":"].contains = $.expr.createPseudo(function (arg) {
                        return function (elem) {
                            return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
                        };
                    });
                });

            </script>
        </div><!-- /page1 -->
    </body>
</html>
