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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">

        <script src="jqmobile/demos/js/jquery.js"></script>
        <script src="jqmobile/demos/_assets/js/index.js"></script>
        <script src="jqmobile/demos/js/jquery.mobile-1.4.5.min.js"></script>
        <link rel="stylesheet" href="css/style.css">

        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
                <h3 style="color:#4caf50;" class="mx-auto"><i class="pr-2 fas fa-home"></i>Reserva de Hospedaje</h3>   
                <div id="accordion">
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingTwo">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Los precios ¿son por persona<br> o por habitación?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="card-body">
                                Todos los precios de TICOBOOKING.COM son por habitación y estancia, a menos que se indique lo contrario.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingThree">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    ¿Está el desayuno incluido<br> en el precio?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="card-body">
                                Una vez hayas confirmado la disponibilidad para las fechas solicitadas, encontrarás información sobre desayuno, impuestos y equipamiento clicando sobre el nombre de la habitación.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingFour">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    No tengo tarjeta de crédito<br> ¿puedo efectuar una reserva?    
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                            <div class="card-body">
                                No. Todos los hoteles solicitan una tarjeta de crédito para garantizar la reserva. No podemos procesar ninguna sin ella.
                            </div>
                        </div> 
                    </div>
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingFive">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapsefive">
                                    ¿Cómo sé si mi reserva<br> ha sido cancelada?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                            <div class="card-body">
                                Una vez cancelada la reserva recibirás un email para confirmar la cancelación. Si no recibes el email de cancelación envíanos los datos de tu reserva. 
                            </div>
                        </div>
                    </div>
                </div>
                
                <hr class="mb-1">

                <br>
                <h3 style="color:#4caf50;" class="mx-auto"><i class="pr-2 fas fa-car"></i> Reserva de Vehiculos</h3>   
                <div id="accordion">
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingTwo2">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
                                    ¿Qué edad debo tener<br> para alquilar un coche?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseTwo2" class="collapse" aria-labelledby="headingTwo2" data-parent="#accordion">
                            <div class="card-body">
                                La mayoría de nuestros proveedores exigen que el conductor principal tenga una edad de entre 21 y 70 años. Si el conductor es menor de 25 años o mayor de 70, es posible que tenga que abonar una tasa adicional.    
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingThree2">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree2" aria-expanded="false" aria-controls="collapseThree2">
                                    ¿Puedo reservar un coche<br> para otra persona?
                                </button>
                            </h5>
                        </div>
                        <div id="collapseThree2" class="collapse" aria-labelledby="headingThree2" data-parent="#accordion">
                            <div class="card-body">
                                Sí, siempre y cuando dicha persona cumpla con estos requisitos. Sólo tendrá que introducir sus datos al realizar la reserva.    
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div style="background-color:#4caf50;" class="card-header" id="headingFour2">
                            <h5 class="mb-0 mt-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour2" aria-expanded="false" aria-controls="collapseFour2">
                                    ¿Qué aspectos son los más<br> importantes a la hora de elegir<br> un coche?    
                                </button>
                            </h5>
                        </div>
                        <div id="collapseFour2" class="collapse" aria-labelledby="headingFour2" data-parent="#accordion">
                            <div class="card-body">
                                <ul>
                                    <li>Tamaño: viajará con más comodidad si escoge un vehículo que disponga de suficiente espacio para los pasajeros y las maletas.</li>
                                    <li>Ubicación: le resultará más cómodo escoger un proveedor cuya oficina de alquiler se encuentre en un lugar mas cercano; sin embargo, los proveedores situados fuera del aeropuerto ofrecen un autobús de cortesía que le llevará a la oficina y suelen tener precios más económicos.</div></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card">
                            <div style="background-color:#4caf50;" class="card-header" id="headingFive2">
                                <h5 class="mb-0 mt-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive2" aria-expanded="false" aria-controls="collapseFive2">
                                        ¿Están todos los impuestos incluidos<br> en el precio del alquiler?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFive2" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                <div class="card-body">
                                    La gran mayoría de nuestras reservas incluyen Cobertura en caso de robo, Cobertura parcial por colisión (CDW), impuestos locales, 
                                    tasas aeroportuarias e impuestos de circulación.  Si desea obtener más información sobre lo que está incluido en su reserva, 
                                    consulte los términos y condiciones o contacte a la empresa a la que pertenece el vehículo.
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr class="mb-1">
                
                    <br>
                    <h3 style="color:#4caf50;" class="mx-auto"><i class="pr-2 fas fa-plane"></i> Reserva de Vuelos</h3>   
                    <div id="accordion">
                        <div class="card">
                            <div style="background-color:#4caf50;" class="card-header" id="headingTwo3">
                                <h5 class="mb-0 mt-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo3">
                                        ¿Qué pasa si efectuó mi<br> reserva más de una vez?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseTwo3" class="collapse" aria-labelledby="headingTwo3" data-parent="#accordion">
                                <div class="card-body">
                                    Si los pasajes para el mismo pasajero se han efectuado con repetición o reservas duplicadas (incluyendo la reserva de vuelos que salen en el mismo día), usted será responsable de las tasas de cancelación.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div style="background-color:#4caf50;" class="card-header" id="headingThree">
                                <h5 class="mb-0 mt-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3">
                                        ¿Cuánto tiempo después de<br> efectuar mi reserva se<br> emitirá el pasaje?
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseThree3" class="collapse" aria-labelledby="headingThree3" data-parent="#accordion">
                                <div class="card-body">
                                    Normalmente, los pasajes se emitirán en 30 minutos después de efectuar y pagar su reserva.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div style="background-color:#4caf50;" class="card-header" id="headingFour3">
                                <h5 class="mb-0 mt-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour3" aria-expanded="false" aria-controls="collapseFour3">
                                        Me he equivocado al hacer<br> la reserva. ¿Qué debo hacer? 
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFour3" class="collapse" aria-labelledby="headingFour3" data-parent="#accordion">
                                <div class="card-body">
                                    Ponte en contacto con nuestro departamento de Atención al Cliente lo antes posible.
                                    De todas maneras te recordamos que nuestro proceso de emisión de billetes es automático y una vez confirmada una reserva la mayoría de tarifas no 
                                    permiten los cambios o cancelaciones. En caso que la aerolínea o la tarifa que has comprado permitan el cambio te indicaremos que nos lo pidas por escrito y en cualquier caso se te aplicarán los gastos de gestión correspondientes.
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div style="background-color:#4caf50;" class="card-header" id="headingFive3">
                                <h5 class="mb-0 mt-0">
                                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive3" aria-expanded="false" aria-controls="collapseFive3">
                                        ¿Con cuánto anticipación<br> puedo reservar un vuelo? 
                                    </button>
                                </h5>
                            </div>
                            <div id="collapseFive3" class="collapse" aria-labelledby="headingFive3" data-parent="#accordion">
                                <div class="card-body">
                                    Usted puede reservar vuelos domésticos con 180 días de anticipo y vuelos internacionales con 365 días de anticipo. Los pasajes deben pagar en el precio cotizado. 
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
            <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    </body>
</html>
