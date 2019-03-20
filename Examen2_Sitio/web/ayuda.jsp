<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 

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
    <body class="place-body">
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

        <div class="container">
            <center><h2 style="color:#4caf50;" class="mx-auto"><i class="fas fa-home"></i>Preguntas Frecuentes<span class="pl-2"><img src="img/costa-rica64.png"></span></h2></center>
            
            <br>
            <h3 style="color:#4caf50;" class="mx-auto"><i class="fas fa-home"></i> Reserva de Hospedaje</h3>   
            <div id="accordion">
                <div class="card">
                    <div style="background-color:#4caf50;" class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Los precios ¿son por persona o por habitación?
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                ¿Está el desayuno incluido en el precio?
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            No tengo tarjeta de crédito ¿puedo efectuar una reserva?    
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapsefive">
                            ¿Cómo sé si mi reserva ha sido cancelada?
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
            
            <br><br>
            <h3 style="color:#4caf50;" class="mx-auto"><i class="fas fa-car"></i> Reserva de Vehiculos</h3>   
            <div id="accordion">
                <div class="card">
                    <div style="background-color:#4caf50;" class="card-header" id="headingTwo2">
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
                                ¿Qué edad debo tener para alquilar un coche?
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree2" aria-expanded="false" aria-controls="collapseThree2">
                                ¿Puedo reservar un coche para otra persona?
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour2" aria-expanded="false" aria-controls="collapseFour2">
                            ¿Qué aspectos son los más importantes a la hora de elegir un coche?    
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive2" aria-expanded="false" aria-controls="collapseFive2">
                            ¿Están todos los impuestos incluidos en el precio del alquiler?
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
            
            <br><br>
            <h3 style="color:#4caf50;" class="mx-auto"><i class="fas fa-plane"></i> Reserva de Vuelos</h3>   
            <div id="accordion">
                <div class="card">
                    <div style="background-color:#4caf50;" class="card-header" id="headingTwo3">
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo3">
                                ¿Qué pasa si efectuó mi reserva más de una vez?
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3">
                                ¿Cuánto tiempo después de efectuar mi reserva se emitirá el pasaje?
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour3" aria-expanded="false" aria-controls="collapseFour3">
                            Me he equivocado al hacer la reserva. ¿Qué debo hacer? 
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
                        <h5 class="mb-0">
                            <button style="color:#FFFFFF;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive3" aria-expanded="false" aria-controls="collapseFive3">
                            ¿Con cuánto anticipación puedo reservar un vuelo? 
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
            
        </div>

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

    </body>

</html>

