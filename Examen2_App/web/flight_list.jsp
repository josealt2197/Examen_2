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
        </div>

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
                    <h2>Vuelos</h2>
                </div>
                <div class="ui-body ui-body-a">
                    <div class="ui-grid-a ui-responsive">
                        <div class="ui-block-a">
                            <div class="ui-body ui-body-d">                    
                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">San José (SJO) - Guanacaste, Costa Rica(LIB)</h1>
                                <div class="row">
                                    <div class="col-4 text-right"><p>SJO</p></div>
                                    <div class="col-4"><span style="width: 100%; height: 2px; display: flex; align-items: center; background-color:#6d8494; margin: 0 auto; margin-top: 15px;"></span></div>
                                    <div class="col-4"><p>LIB</p></div>      
                                </div>
                            </div>
                        </div>
                        <div class="ui-block-b">
                            <div class="ui-body ui-body-d">
                                <center>
                                    <h3><i class="fas fa-money-bill-wave-alt"></i><span class="pl-2">128321</span></i></h3>
                                    <button class="ui-btn" type="submit" style="width:200px">Leer más</button>
                                </center>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>

            <br><hr><br>

            <div class="ui-corner-all custom-corners">
                <div class="ui-bar ui-bar-a">
                    <h2>Vuelos</h2>
                </div>
                <div class="ui-body ui-body-a">
                    <div class="ui-grid-a ui-responsive">
                        <div class="ui-block-a">
                            <div class="ui-body ui-body-d">                    
                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">San José (SJO) - Tamarindo (TNO)</h1>
                                <h3><i class="fas fa-stopwatch"><span class="pl-2">22h 32m</span></i></h3>
                                <div class="row">
                                    <div class="col-4 text-right"><p>SJO</p></div>
                                    <div class="col-4"><span style="width: 100%; height: 2px; display: flex; align-items: center; background-color:#6d8494; margin: 0 auto; margin-top: 15px;"></span></div>
                                    <div class="col-4"><p>TNO</p></div>      
                                </div>
                            </div>
                        </div>
                        <div class="ui-block-b">
                            <div class="ui-body ui-body-d">
                                <center>
                                    <h3><i class="fas fa-money-bill-wave-alt"></i><span class="pl-2">105921</span></i></h3>
                                    <button class="ui-btn" type="submit" style="width:200px">Leer más</button>
                                </center>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>

            <br><hr><br>

            <div class="ui-corner-all custom-corners">
                <div class="ui-bar ui-bar-a">
                    <h2>Vuelos</h2>
                </div>
                <div class="ui-body ui-body-a">
                    <div class="ui-grid-a ui-responsive">
                        <div class="ui-block-a">
                            <div class="ui-body ui-body-d">                    
                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">San José (SJO) - Guanacaste, Costa Rica(LIB)</h1>
                                <h3><i class="fas fa-stopwatch"><span class="pl-2">22h 32m</span></i></h3>
                                <div class="row">
                                    <div class="col-4 text-right"><p>SJO</p></div>
                                    <div class="col-4"><span style="width: 100%; height: 2px; display: flex; align-items: center; background-color:#6d8494; margin: 0 auto; margin-top: 15px;"></span></div>
                                    <div class="col-4"><p>LIB</p></div>      
                                </div>
                            </div>
                        </div>
                        <div class="ui-block-b">
                            <div class="ui-body ui-body-d">
                                <center>
                                    <h3><i class="fas fa-money-bill-wave-alt"></i><span class="pl-2">128321</span></i></h3>
                                    <button class="ui-btn" type="submit" style="width:200px">Leer más</button>
                                </center>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>

            <br><hr><br>

        </div>

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
    </div>

</body>
</html>
