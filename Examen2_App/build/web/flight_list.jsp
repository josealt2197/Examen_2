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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

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

                <s:iterator value="flight_list">
                    <div class="ui-corner-all custom-corners">
                        <div class="ui-bar ui-bar-a">
                            <h2>Vuelos</h2>
                        </div>
                        <div class="ui-body ui-body-a">
                            <div class="ui-grid-a ui-responsive">
                                <div class="ui-block-a">
                                    <div class="ui-body ui-body-d">                    
                                        <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;"><s:property value="origen.getValue()"></s:property> - <s:property value="destino.getValue()"></s:property></h1>
                                        <center>
                                                <img width="250" height="130" src="<s:property value="imagen.getValue()"></s:property>" alt="Imagen vuelo"><br>
                                        </center>
                                            <div class="mx-auto text-center mt-2">
                                                <i class="pr-2 far fa-calendar-alt" style="color: #28a745;"></i><span><strong><s:property value="fecha.getValue()"></s:property></strong></span>
                                            </div>    
                                            <div class="row">
                                                <div class="col-4 text-right"><p><s:property value="horasalida.getValue()"></s:property></p></div>
                                                <div class="col-4"><span style="width: 100%; height: 2px; display: flex; align-items: center; background-color:#6d8494; margin: 0 auto; margin-top: 15px;"></span></div>
                                                <div class="col-4"><p><s:property value="horallegada.getValue()"></s:property></p></div>

                                            </div>
                                            <div class="mx-auto text-center">
                                                <i class="pr-2 fas fa-stopwatch" style="color: #28a745;"></i><span><strong><s:property value="duracion.getValue()"></s:property></strong></span>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="ui-block-b">
                                        <div class="ui-body ui-body-d">
                                            <div class="mb-1">
                                                <span style="width: 100%; height: 5px; display: flex; align-items: center; background-color:#7CC543; margin: 0 auto; margin-top: 15px;"></span><br>
                                                <i class="pr-2 fas fa-plane-departure" style="color: #28a745;"></i><span><s:property value="aerolinea.getValue()"></s:property></span><br>
                                                <i class="pr-2 fas fa-plane" style="color: #28a745;"></i><span><s:property value="avion.getValue()"></s:property></span><br>
                                                <i class="pr-2 fas fa-money-bill-wave-alt" style="color: #28a745;"></i><span>$<s:property value="costo.getValue()"></s:property></span> 
                                            </div>
                                            <center>
                                                <a class="btn btn-success" style="margin: 20px auto; color:#fff; text-decoration: none;" href="viewflight_detail.action?idVuelo=<s:property value="id"></s:property>">Ver oferta</a>
                                            </center>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br><hr><br>
                </s:iterator>

                <!--                <div class="ui-corner-all custom-corners">
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
                
                                <br><hr><br>-->

            </div>

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
        </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">var scrolltotop={setting:{startline:100,scrollto:0,scrollduration:1e3,fadeduration:[500,100]},controlHTML:'<img src="https://i1155.photobucket.com/albums/p559/scrolltotop/arrow88.png" />',controlattrs:{offsetx:5,offsety:5},anchorkeyword:"#top",state:{isvisible:!1,shouldvisible:!1},scrollup:function(){this.cssfixedsupport||this.$control.css({opacity:0});var t=isNaN(this.setting.scrollto)?this.setting.scrollto:parseInt(this.setting.scrollto);t="string"==typeof t&&1==jQuery("#"+t).length?jQuery("#"+t).offset().top:0,this.$body.animate({scrollTop:t},this.setting.scrollduration)},keepfixed:function(){var t=jQuery(window),o=t.scrollLeft()+t.width()-this.$control.width()-this.controlattrs.offsetx,s=t.scrollTop()+t.height()-this.$control.height()-this.controlattrs.offsety;this.$control.css({left:o+"px",top:s+"px"})},togglecontrol:function(){var t=jQuery(window).scrollTop();this.cssfixedsupport||this.keepfixed(),this.state.shouldvisible=t>=this.setting.startline?!0:!1,this.state.shouldvisible&&!this.state.isvisible?(this.$control.stop().animate({opacity:1},this.setting.fadeduration[0]),this.state.isvisible=!0):0==this.state.shouldvisible&&this.state.isvisible&&(this.$control.stop().animate({opacity:0},this.setting.fadeduration[1]),this.state.isvisible=!1)},init:function(){jQuery(document).ready(function(t){var o=scrolltotop,s=document.all;o.cssfixedsupport=!s||s&&"CSS1Compat"==document.compatMode&&window.XMLHttpRequest,o.$body=t(window.opera?"CSS1Compat"==document.compatMode?"html":"body":"html,body"),o.$control=t('<div id="topcontrol">'+o.controlHTML+"</div>").css({position:o.cssfixedsupport?"fixed":"absolute",bottom:o.controlattrs.offsety,right:o.controlattrs.offsetx,opacity:0,cursor:"pointer"}).attr({title:"Scroll to Top"}).click(function(){return o.scrollup(),!1}).appendTo("body"),document.all&&!window.XMLHttpRequest&&""!=o.$control.text()&&o.$control.css({width:o.$control.width()}),o.togglecontrol(),t('a[href="'+o.anchorkeyword+'"]').click(function(){return o.scrollup(),!1}),t(window).bind("scroll resize",function(t){o.togglecontrol()})})}};scrolltotop.init();</script>
    <noscript>Not seeing a <a href="https://www.scrolltotop.com/">Scroll to Top Button</a>? Go to our FAQ page for more info.</noscript>


    </body>
</html>
