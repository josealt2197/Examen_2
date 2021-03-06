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
            <s:iterator  value="flight_info"> 
                <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
                    <div class="row">
                        <div class="col-md-8 mr-5 px-0">
                            <h1 class="display-5 font-italic">Vuelo: <s:property value="aerolinea.getValue()"></s:property> - <s:property value="vuelo.getValue()"></s:property></h1>
                                <span class="badge badge-primary badge-pill">Internacional</span><span class="ml-3 badge badge-info">Oferta del Mes</span>
                            </div>
                            <div class="col-md-3">
                                <center><h2 style="color:#28A745"><strong></strong>$<s:property value="costo.getValue()"></s:property></h2></center>
                                <br><a class="btn btn-success btn-lg btn-block" href="reservacion_vuelo.action?submitType=updatedata&id_vuelo=<s:property value="id"></s:property>">Reservar</a>
                            </div>
                        </div>	
                    </div>

                    <div class="row">
                        <div class="col-md-6 blog-main">
                            <h3 class="pb-4 mb-4 font-italic border-bottom">
                                Detalles Generales del Vuelo
                            </h3>
                            <div class="blog-post">

                            <p><strong>Fecha del Vuelo: </strong><s:property value="fecha.getValue()"></s:property></p>
                            <p><strong>Hora de Salida: </strong><s:property value="horasalida.getValue()"></s:property></p>
                            <p><strong>Hora de Llegada: </strong><s:property value="horallegada.getValue()"></s:property></p>
                            <p><strong>Aeronave:</strong> <s:property value="avion.getValue()"></s:property></p>

                                <hr>
                            </div>
                        </div>

                        <aside class="col-md-6 blog-sidebar">
                            <img class="card-img-right flex-auto d-none d-md-block" width="220" style="padding-top: 25px;" src="<s:property value="imagen.getValue()"></s:property>" alt="img_aero"><br> 
                            <div class="p-4 mb-3 bg-light rounded">
                            <p><strong>Origen:</strong> <s:property value="origen.getValue()"></s:property></p>
                            <p><strong>Destino:</strong> <s:property value="destino.getValue()"></s:property></p>
                            <p><strong>Duración:</strong> <s:property value="destino.getValue()"></s:property></p>		               
                            </div>
                        </aside>

                    </div>
            </s:iterator>     

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

