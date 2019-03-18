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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
                <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Realizar otra busqueda.</h2>


                <center>
                    <form>
                        <select>
                            <option>¿Qué andas buscando?</option>
                            <option>Hospedaje</option>
                            <option>Vehículos</option>
                            <option>Tiquetes Aereos</option>
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

                <div class="ui-corner-all custom-corners">
                    <div class="ui-bar ui-bar-a">
                        <h2>Transporte</h2>
                    </div>
                    <div class="ui-body ui-body-a">
                        <div class="ui-grid-a ui-responsive">
                            <div class="ui-block-a">
                                <div class="ui-body ui-body-d">                    
                                    <center>
                                        <img width="300px" src="img/ford.jpg"><br>
                                    </center>
                                </div>
                            </div>
                            <div class="ui-block-b">
                                <div class="ui-body ui-body-d">
                                    <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Ford Fiesta</h1>
                                    <div class="mb-1">
                                        <span class="badge badge-primary">Enterprise</span>
                                        <span class="badge badge-success">Mini</span><br>
                                        <i class="pr-4 fas fa-chair"><span class="pl-2">4 asientos</span></i>
                                        <i class="pr-4 fas fa-cogs"><span class="pl-2">Automático</span></i>
                                        <i class="fas fa-door-closed"><span class="pl-2">4 puertas</span></i>
                                    </div>
                                    <div class="mb-1">
                                        <i class="fas fa-wind"><span class="pl-2">Aire acondicionado</span></i>
                                    </div>
                                    <center>
                                        <button class="ui-btn" type="submit" style="width:200px">Leer más</button>
                                    </center>
                                </div> 
                            </div>
                        </div><!-- /grid-a -->
                    </div>
                </div>

                <br><hr><br>

                <div class="ui-corner-all custom-corners">
                    <div class="ui-bar ui-bar-a">
                        <h2>Transporte</h2>
                    </div>
                    <div class="ui-body ui-body-a">
                        <div class="ui-grid-a ui-responsive">
                            <div class="ui-block-a">
                                <div class="ui-body ui-body-d">                    
                                    <center>
                                        <img width="300px" src="img/ford.jpg"><br>
                                    </center>
                                </div>
                            </div>
                            <div class="ui-block-b">
                                <div class="ui-body ui-body-d">
                                    <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Toyota Yaris 1.3</h1>
                                    <div class="mb-1">
                                        <span class="badge badge-primary">Keddy By Europcar</span>
                                        <span class="badge badge-success">Compacto</span><br>
                                        <i class="pr-4 fas fa-chair"><span class="pl-2">4 asientos</span></i>
                                        <i class="pr-4 fas fa-cogs"><span class="pl-2">Manual</span></i>
                                        <i class="fas fa-door-closed"><span class="pl-2">4 puertas</span></i>
                                    </div>
                                    <center>
                                        <button class="ui-btn" type="submit" style="width:200px">Leer más</button>
                                    </center>
                                </div> 
                            </div>
                        </div><!-- /grid-a -->
                    </div>
                </div>

                <br><hr><br>

                <div class="ui-corner-all custom-corners">
                    <div class="ui-bar ui-bar-a">
                        <h2>Transporte</h2>
                    </div>
                    <div class="ui-body ui-body-a">
                        <div class="ui-grid-a ui-responsive">
                            <div class="ui-block-a">
                                <div class="ui-body ui-body-d">                    
                                    <center>
                                        <img width="300px" src="img/ford.jpg"><br>
                                    </center>
                                </div>
                            </div>
                            <div class="ui-block-b">
                                <div class="ui-body ui-body-d">
                                    <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Toyota Corolla Sedan</h1>
                                    <div class="mb-1">
                                        <span class="badge badge-primary">Sixt</span>
                                        <span class="badge badge-success">Económico</span><br>
                                        <i class="pr-4 fas fa-chair"><span class="pl-2">4 asientos</span></i>
                                        <i class="pr-4 fas fa-cogs"><span class="pl-2">Manual</span></i>
                                        <i class="fas fa-door-closed"><span class="pl-2">4 puertas</span></i>
                                    </div>
                                    <div class="mb-1">
                                        <i class="fas fa-wind"><span class="pl-2">Aire acondicionado</span></i>
                                    </div>
                                    <center>
                                        <button class="ui-btn" type="submit" style="width:200px">Leer más</button>
                                    </center>
                                </div> 
                            </div>
                        </div><!-- /grid-a -->
                    </div>
                </div>

                <br><hr><br>

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
                    <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>
        </div><!-- /page1 -->
    </body>
</html>
