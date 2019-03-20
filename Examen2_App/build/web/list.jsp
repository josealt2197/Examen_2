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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

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
                <s:if test="%{#session.session_correo != null}">
                    <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h2 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Realizar otra búsqueda.</h2>


                <center>
                    <div class="form-row ">
                        <div class="col-md-6 mx-auto">
                            <h4>¿Dónde lo necesitas?</h4>
                            <input type="text" class="form-control form-control-lg" id="search-criteria" placeholder="Escribe algún lugar">
                            <button id="search" class="btn btn-block btn-lg btn-success">Buscar</button>
                        </div><br>
                    </div> 
                </center>
                <br><br>

                <hr>
                <br> 

                <s:iterator value="hotels_list">
                    <div class="place-data">
                        <div class="ui-corner-all custom-corners">
                            <div class="ui-bar ui-bar-a">
                                <h2><s:property value="Tipo.getValue()"></s:property></h2>
                                </div>
                                <div class="ui-body ui-body-a">
                                    <div class="ui-grid-a ui-responsive">
                                        <div class="ui-block-a">
                                            <div class="ui-body ui-body-d">                    
                                                <center>
                                                    <img width="290" src="<s:property value="ImagenHos.getValue()"></s:property>" alt="Card image cap"><br>
                                                </center>
                                            </div>
                                        </div>
                                        <div class="ui-block-b">
                                            <div class="ui-body ui-body-d">
                                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;"><s:property value="NombreHos.getValue()"></s:property></h1>
                                            <i class="fas fa-map-marker-alt pr-2" style="color: #28a745;"></i><span><s:property value="UbicacionExacta.getValue()"></s:property></span><br><br>
                                            <i class="fas fa-city pr-2" style="color: #28a745;"></i><span><s:property value="ProvinciaHos.getValue()"></s:property></span><br>
                                            <i class="fas fa-users pr-2" style="color: #28a745;"></i><span><s:property value="CantidadHuespedes"></s:property></span>
                                            <i class="fas fa-money-bill pr-1 pl-2" style="color: #4caf50; margin-top: 15px;"></i> $ <s:property value="Precio"></s:property><br>
                                                <center>
                                                    <a class="btn btn-success" style="margin: 20px auto; color:#fff; text-decoration: none;" href="place_detail.action?id=<s:property value="id"></s:property>">Leer más</a>
                                                </center>
                                            </div> 
                                        </div>
                                    </div><!-- /grid-a -->
                                </div>
                                <br><hr><br>
                            </div>
                        </div>

                </s:iterator>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script type="text/javascript">var scrolltotop = {setting: {startline: 100, scrollto: 0, scrollduration: 1e3, fadeduration: [500, 100]}, controlHTML: '<img src="https://i1155.photobucket.com/albums/p559/scrolltotop/arrow88.png" />', controlattrs: {offsetx: 5, offsety: 5}, anchorkeyword: "#top", state: {isvisible: !1, shouldvisible: !1}, scrollup: function () {
                            this.cssfixedsupport || this.$control.css({opacity: 0});
                            var t = isNaN(this.setting.scrollto) ? this.setting.scrollto : parseInt(this.setting.scrollto);
                            t = "string" == typeof t && 1 == jQuery("#" + t).length ? jQuery("#" + t).offset().top : 0, this.$body.animate({scrollTop: t}, this.setting.scrollduration)
                        }, keepfixed: function () {
                            var t = jQuery(window), o = t.scrollLeft() + t.width() - this.$control.width() - this.controlattrs.offsetx, s = t.scrollTop() + t.height() - this.$control.height() - this.controlattrs.offsety;
                            this.$control.css({left: o + "px", top: s + "px"})
                        }, togglecontrol: function () {
                            var t = jQuery(window).scrollTop();
                            this.cssfixedsupport || this.keepfixed(), this.state.shouldvisible = t >= this.setting.startline ? !0 : !1, this.state.shouldvisible && !this.state.isvisible ? (this.$control.stop().animate({opacity: 1}, this.setting.fadeduration[0]), this.state.isvisible = !0) : 0 == this.state.shouldvisible && this.state.isvisible && (this.$control.stop().animate({opacity: 0}, this.setting.fadeduration[1]), this.state.isvisible = !1)
                        }, init: function () {
                            jQuery(document).ready(function (t) {
                                var o = scrolltotop, s = document.all;
                                o.cssfixedsupport = !s || s && "CSS1Compat" == document.compatMode && window.XMLHttpRequest, o.$body = t(window.opera ? "CSS1Compat" == document.compatMode ? "html" : "body" : "html,body"), o.$control = t('<div id="topcontrol">' + o.controlHTML + "</div>").css({position: o.cssfixedsupport ? "fixed" : "absolute", bottom: o.controlattrs.offsety, right: o.controlattrs.offsetx, opacity: 0, cursor: "pointer"}).attr({title: "Scroll to Top"}).click(function () {
                                    return o.scrollup(), !1
                                }).appendTo("body"), document.all && !window.XMLHttpRequest && "" != o.$control.text() && o.$control.css({width: o.$control.width()}), o.togglecontrol(), t('a[href="' + o.anchorkeyword + '"]').click(function () {
                                    return o.scrollup(), !1
                                }), t(window).bind("scroll resize", function (t) {
                                    o.togglecontrol()
                                })
                            })
                        }};
                    scrolltotop.init();</script>
                <noscript>Not seeing a <a href="https://www.scrolltotop.com/">Scroll to Top Button</a>? Go to our FAQ page for more info.</noscript>


            </div><!-- /content -->

            <div data-role="panel" data-display="push" data-theme="b" id="nav-panel">
                <ul data-role="listview">
                    <li data-icon="delete"><a href="#" data-rel="close">Cerrar Menú</a></li>
                        <s:if test="%{#session.session_correo != null}">
                        <li><a href="login.jsp" rel="external">Iniciar sesión</a></li>
                        </s:if>
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


        </div><!-- /page1 -->

        <script>
            $('#search').click(function () {
                var filter = $("#search-criteria").val();
                $('.place-data').each(function () {
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

    </body>
</html>
