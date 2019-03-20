<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>  
<%@ page import = "controller.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>TicoBooking</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="icon" href="img/costa-rica64.png">

    </head>


    <body class="text-center">
        <nav class="navbar navbar-expand-md navbar-dark fixed-top nav-green">
            <a class="navbar-brand" href="index.jsp"><span class="pr-2"><img src="img/costa-rica32.png"></span><strong>TicoBooking</strong></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"></li>
                </ul>
                <form class="form-inline mt-2 mt-md-0">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="tipo_cambio.jsp">Tipo de Cambio</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="ayuda.jsp">¿Necesitas ayuda?</a>
                        </li>
                        <li class="nav-item active">
                            <s:if test="%{#session.session_correo == null}">
                                <a class="nav-link" href="login.jsp">Ingresar</a>
                            </s:if>
                            <s:elseif test="%{#session.session_correo != null}">
                                <a class="nav-link" href="logout">Salir</a>
                            </s:elseif>
                        </li>
                    </ul>
                </form>
            </div>
        </nav>

        <div class="listado">

            <!-- Call to Action -->
            <section class="list-search text-white text-center">
                <div class="overlay"></div>
                <div class="container">

                    <div class="form-row ">
                        <div class="col-md-6 mx-auto">
                            <h1 class="mb-3" style="color:#4caf50;">Hospedaje<span class="pl-2"><img src="img/costa-rica64.png"></span></h1>
                            <h4>¿Donde lo necesitas?</h4>
                            <input type="text" class="form-control form-control-lg" id="search-criteria" placeholder="¿Donde lo necesitas?">
                        </div><br>
                    </div>
<!--                    <div class="form-row mx-auto">
                        <div class="col-md-2 mx-auto">
                            <br><button id="search" class="btn btn-block btn-lg btn-success">Buscar</button>
                        </div>
                    </div>-->

                </div>
            </section><br>

            <hr class="mb-4">

            <!--A PARTIR DE AQUI-->
            <s:iterator  value="hotels_list"> 
                <div class="place-data">
                    <div class="row mb-2 ">
                        <div class="col-md-8 mx-auto">
                            <div class="card flex-md-row mb-4 box-shadow h-md-250">
                                <div class="card-body d-flex flex-column align-items-start">
                                    <span class="badge badge-primary badge-pill"  style="margin-bottom: 18px;"><s:property value="Tipo.getValue()"></s:property></span>
                                        <h3 class="mb-0">
                                            <a class="text-dark" href="#"><s:property value="NombreHos.getValue()"></s:property></a>
                                        </h3>
                                        <div class="mb-1">
                                        <i class="provincia pr-4 fas fa-map-marker-alt" style="color: #4caf50; margin-top: 15px;"> <s:property value="ProvinciaHos.getValue()"></s:property></i>                                        
                                        <i class="pr-4 fas fa-users" style="color: #4caf50; margin-top: 15px;"> <s:property value="CantidadHuespedes"></s:property></i>
                                        <i class="fas fa-money-bill" style="color: #4caf50; margin-top: 15px;"> $ <s:property value="Precio"></s:property></i>
                                        </div>                      
                                        <p class="card-text mb-auto" style="margin-top: 15px;"><s:property value="DescripcionHos.getValue()"></s:property></p>
                                    <br><a class="btn btn-success" href="place_detail.action?id=<s:property value="id"></s:property>">Leer más</a>
                                    </div>
                                    <img class="card-img-right flex-auto d-none d-md-block" width="290" height="275" style="padding-top: 25px;" src="<s:property value="ImagenHos.getValue()"></s:property>" alt="Card image cap">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>            
        </s:iterator>  
        <!--HASTA AQUI-->

    <hr class="mb-4">

    <!-- Footer -->
    <footer class="footer bg-light">
        <div class="container">
            <div class="row">
                <div class="foot col-lg-6 h-100 text-center mx-auto">
                    <ul class="list-inline mb-2">
                        <li class="list-inline-item">
                            <a href="#">Ayuda</a>
                        </li>
                        <li class="list-inline-item">&sdot;</li>
                        <li class="list-inline-item">
                            <a href="#">Hospedaje</a>
                        </li>
                        <li class="list-inline-item">&sdot;</li>
                        <li class="list-inline-item">
                            <a href="#">Vehículos</a>
                        </li>
                    </ul>
                    <p class="text-muted small mb-4 mb-lg-0">&copy; JBSG 2019. All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    
    <script>
        $('#search-criteria').keyup(function () { 
            var filter = $("#search-criteria").val();
            $('.place-data').each(function() {
                $(this).find(".row:not(:contains('" + filter + "'))").hide();
                $(this).find(".row:contains('" + filter + "')").show();
            });
            $.expr[":"].contains = $.expr.createPseudo(function (arg) {
                return function (elem) {
                    return $(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0;
                };
            });
        });
        
    </script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">var scrolltotop={setting:{startline:100,scrollto:0,scrollduration:1e3,fadeduration:[500,100]},controlHTML:'<img src="https://i1155.photobucket.com/albums/p559/scrolltotop/arrow88.png" />',controlattrs:{offsetx:5,offsety:5},anchorkeyword:"#top",state:{isvisible:!1,shouldvisible:!1},scrollup:function(){this.cssfixedsupport||this.$control.css({opacity:0});var t=isNaN(this.setting.scrollto)?this.setting.scrollto:parseInt(this.setting.scrollto);t="string"==typeof t&&1==jQuery("#"+t).length?jQuery("#"+t).offset().top:0,this.$body.animate({scrollTop:t},this.setting.scrollduration)},keepfixed:function(){var t=jQuery(window),o=t.scrollLeft()+t.width()-this.$control.width()-this.controlattrs.offsetx,s=t.scrollTop()+t.height()-this.$control.height()-this.controlattrs.offsety;this.$control.css({left:o+"px",top:s+"px"})},togglecontrol:function(){var t=jQuery(window).scrollTop();this.cssfixedsupport||this.keepfixed(),this.state.shouldvisible=t>=this.setting.startline?!0:!1,this.state.shouldvisible&&!this.state.isvisible?(this.$control.stop().animate({opacity:1},this.setting.fadeduration[0]),this.state.isvisible=!0):0==this.state.shouldvisible&&this.state.isvisible&&(this.$control.stop().animate({opacity:0},this.setting.fadeduration[1]),this.state.isvisible=!1)},init:function(){jQuery(document).ready(function(t){var o=scrolltotop,s=document.all;o.cssfixedsupport=!s||s&&"CSS1Compat"==document.compatMode&&window.XMLHttpRequest,o.$body=t(window.opera?"CSS1Compat"==document.compatMode?"html":"body":"html,body"),o.$control=t('<div id="topcontrol">'+o.controlHTML+"</div>").css({position:o.cssfixedsupport?"fixed":"absolute",bottom:o.controlattrs.offsety,right:o.controlattrs.offsetx,opacity:0,cursor:"pointer"}).attr({title:"Scroll to Top"}).click(function(){return o.scrollup(),!1}).appendTo("body"),document.all&&!window.XMLHttpRequest&&""!=o.$control.text()&&o.$control.css({width:o.$control.width()}),o.togglecontrol(),t('a[href="'+o.anchorkeyword+'"]').click(function(){return o.scrollup(),!1}),t(window).bind("scroll resize",function(t){o.togglecontrol()})})}};scrolltotop.init();</script>
    <noscript>Not seeing a <a href="https://www.scrolltotop.com/">Scroll to Top Button</a>? Go to our FAQ page for more info.</noscript>


</body>
</html>


