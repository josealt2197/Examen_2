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
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">

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
                <s:if test="%{#session.session_correo != null}">
                    <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h1 class="ui-title" role="heading" style="color:#28A745;">Preguntas Frecuentes</h1>
                <br>

                <div class="row">
                    <div class="col">            
                        <div class="card" style="width:300px; border: solid 2px #28A745;">
                            <img class="card-img-top" height="150" src="https://cache.marriott.com/Images/Brands/MHR/MHR_redesign_2016/redesign_marriott.jpg" alt="Card image">
                            <div class="card-body">
                                <h3 style="color: #0A2A70;" class="mx-auto card-title"><i class="fas fa-home"></i> Reserva de Hospedaje</h3>
                                <p class="card-text"><strong>¿Tienes preguntas de las habitaciones que te ofrecemos?</strong> En nuestra seccion <b>FAQ</b> te las respondemos</p>
                                <a href="#dialog1" class="btn btn-success text-white" style="text-decoration: none;">FAQ <i class="fas fa-home"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col"> 
                        <div class="card" style="width:300px; border: solid 2px #28A745;">
                            <img class="card-img-top" height="150" src="https://images.unsplash.com/photo-1482029255085-35a4a48b7084?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80" alt="Card image">
                            <div class="card-body">
                                <h3 style="color: #0A2A70;" class="mx-auto"><i class="fas fa-car"></i> Reserva de Vehiculos</h3> 
                                <p class="card-text"><strong>¿Tienes preguntas sobre las opciones de alquiler de vehículos?</strong> En nuestra seccion <b>FAQ</b> te las respondemos</p>
                                <a href="#dialog2" class="btn btn-success text-white" style="text-decoration: none;">FAQ <i class="fas fa-car"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 25px;">
                    <div class="col"> 
                        <div class="card" style="width:300px; border: solid 2px #28A745;">
                            <img class="card-img-top" height="150" src="https://images.unsplash.com/photo-1488085061387-422e29b40080?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80" alt="Card image">
                            <div class="card-body">
                                <h3 style="color: #0A2A70;" class="mx-auto"><i class="fas fa-plane"></i> Reserva de Vuelos</h3> 
                                <p class="card-text"><strong>¿Tienes preguntas sobre tus viajes?</strong> En nuestra seccion <b>FAQ</b> te las respondemos</p>
                                <a href="#dialog3" class="btn btn-success text-white" style="text-decoration: none;">FAQ <i class="fas fa-plane"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
        
                <hr class="mb-1">
                <br>
            </div><!-- /content -->

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

            <div data-role="footer" data-theme="b" class="ui-footer ui-bar-a" role="contentinfo">
                <center>
                    <img src="./img/logo1.png" alt="rss" style="display: block; margin: 0 auto;  padding-top:1%; width:150px;"><br>
                    <p class="copyright">© Copyright 2019</p>
                </center>
            </div>
        </div>

        <div data-role="page" class="jqm-demos ui-responsive-panel" id="dialog1" data-title="TicoBooking" data-dialog="true" data-close-btn="right">

            <div data-role="header" data-theme="b">
                <h1>Reserva de<br> Hospedaje</h1>
            </div>

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">

                <div data-role="collapsible">     
                    <h4>Los precios ¿son por persona<br> o por habitación?</h4>     
                    <p> Todos los precios de TICOBOOKING.COM son por habitación y estancia, a menos que se indique lo contrario.</p> 
                </div>
                <div data-role="collapsible">     
                    <h4>¿Está el desayuno incluido<br> en el precio?</h4>     
                    <p>Una vez hayas confirmado la disponibilidad para las fechas solicitadas, encontrarás información sobre desayuno, impuestos y equipamiento clicando sobre el nombre de la habitación.</p> 
                </div>
                <div data-role="collapsible">     
                    <h4> No tengo tarjeta de crédito<br> ¿puedo efectuar una reserva? </h4>     
                    <p>No. Todos los hoteles solicitan una tarjeta de crédito para garantizar la reserva. No podemos procesar ninguna sin ella..</p> 
                </div>
                <div data-role="collapsible">     
                    <h4>¿Cómo sé si mi reserva<br> ha sido cancelada?</h4>     
                    <p> Una vez cancelada la reserva recibirás un email para confirmar la cancelación. Si no recibes el email de cancelación envíanos los datos de tu reserva.</p> 
                </div>

            </div><!-- /content -->

        </div>

        <div data-role="page" class="jqm-demos ui-responsive-panel" id="dialog2" data-title="TicoBooking" data-dialog="true" data-close-btn="right">

            <div data-role="header" data-theme="b">
                <h1>Reserva de<br> Vehículos</h1>
            </div>

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">

                <div data-role="collapsible">     
                    <h4>¿Qué edad debo tener para<br> alquilar un coche?</h4>     
                    <p> La mayoría de nuestros proveedores exigen que el conductor principal tenga una edad de entre 21 y 70 años. Si el conductor es menor de 25 años o mayor de 70, es posible que tenga que abonar una tasa adicional. </p> 
                </div>

                <div data-role="collapsible">     
                    <h4>¿Puedo reservar un coche<br> para otra persona?</h4>     
                    <p>  Sí, siempre y cuando dicha persona cumpla con estos requisitos. Sólo tendrá que introducir sus datos al realizar la reserva. </p> 
                </div>

                <div data-role="collapsible">     
                    <h4>¿Qué aspectos son los más<br> importantes a la hora de elegir<br> un coche?</h4>  
                    <ul>
                        <li>Tamaño: viajará con más comodidad si escoge un vehículo que disponga de suficiente espacio para los pasajeros y las maletas.</li>
                        <li>Ubicación: le resultará más cómodo escoger un proveedor cuya oficina de alquiler se encuentre en un lugar mas cercano; sin embargo, los proveedores situados fuera del aeropuerto ofrecen un autobús de cortesía que le llevará a la oficina y suelen tener precios más económicos.</li>
                    </ul>
                </div>

                <div data-role="collapsible">     
                    <h4>¿Están todos los impuestos<br> incluidos en el precio del<br> alquiler?</h4>     
                    <p>  La gran mayoría de nuestras reservas incluyen Cobertura en caso de robo, Cobertura parcial por colisión (CDW), impuestos locales, 
                        tasas aeroportuarias e impuestos de circulación.  Si desea obtener más información sobre lo que está incluido en su reserva, 
                        consulte los términos y condiciones o contacte a la empresa a la que pertenece el vehículo.</p> 
                </div>
            </div><!-- /content -->
        </div>
        
           
        <div data-role="page" class="jqm-demos ui-responsive-panel" id="dialog3" data-title="TicoBooking" data-dialog="true" data-close-btn="right">

            <div data-role="header" data-theme="b">
                <h1>Reserva de<br> Vuelos</h1>
            </div>
            
            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">

                <div data-role="collapsible">     
                    <h4>¿Qué pasa si efectuó mi<br> reserva más de una vez?</h4>     
                    <p> Si los pasajes para el mismo pasajero se han efectuado con repetición o reservas duplicadas (incluyendo la reserva de vuelos que salen en el mismo día), usted será responsable de las tasas de cancelación. </p> 
                </div>

                <div data-role="collapsible">     
                    <h4>¿Cuánto tiempo después de<br> efectuar mi reserva se emitirá<br> el pasaje?</h4>     
                    <p>  Normalmente, los pasajes se emitirán en 30 minutos después de efectuar y pagar su reserva. </p> 
                </div>

                <div data-role="collapsible">     
                    <h4>Me he equivocado al hacer<br> la reserva. ¿Qué debo hacer? </h4>  
                    <ul>
                        <li>Ponte en contacto con nuestro departamento de Atención al Cliente lo antes posible.</li>
                        <li>De todas maneras te recordamos que nuestro proceso de emisión de billetes es automático y una vez confirmada una reserva la mayoría de tarifas no permiten los cambios o cancelaciones.</li> 
                        <li>En caso que la aerolínea o la tarifa que has comprado permitan el cambio te indicaremos que nos lo pidas por escrito y en cualquier caso se te aplicarán los gastos de gestión correspondientes.</li>
                    </ul>
                </div>

                <div data-role="collapsible">     
                    <h4>¿Con cuánto anticipación<br> puedo reservar un vuelo? </h4>     
                    <p> Usted puede reservar vuelos domésticos con 180 días de anticipo y vuelos internacionales con 365 días de anticipo. Los pasajes deben pagar en el precio cotizado. </p> 
                </div>
            </div><!-- /content -->
        </div>


        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    </body>
</html>
