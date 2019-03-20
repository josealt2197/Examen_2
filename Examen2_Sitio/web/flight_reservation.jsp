<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

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
        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="icon" href="img/costa-rica64.png">


    </head>
    <body class="bg-light">

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
            <s:form  theme="simple" cssClass="needs-validation" action = "reservacion_vuelo" id="registration_form" method = "post">

                <div class="py-5 text-center">
                    <img class="d-block mx-auto mb-4" src="/docs/4.3/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
                    <h2>Reservación de Vuelo</h2>
                    <p class="lead">Llena los espacios que se solicitan abajo para completar la reservación.</p>
                </div>

                <div class="row">
                    <div class="col-md-7 order-md-1">
                        <div class='alert alert-success'>
                            <strong>¿Aún no has iniciado sesión?</strong><p>Puedes iniciar sesión para completar tus datos personales con tu perfil o crea una cuenta para estar en contacto contigo.</p>
                        </div>
                        <h4 class="mb-3">Datos personales</h4>

                        <div style="display:none;">
                            <input type="text" class="form-control" name="fr.id_vuelo" value="<s:property value='id_vuelo'/>" >
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstname">Nombre</label>
                                <s:textfield type = "text" cssClass="form-control" id="firstname" name = "fr.nombre" placeholder="Nombre" required="required"></s:textfield>
                                    <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Apellidos</label>
                                <s:textfield type = "text" cssClass="form-control" id="lastName" name = "fr.apellido" placeholder="Apellidos" required="required"></s:textfield>
                                    <!--<input type="text" class="form-control" id="lastName" placeholder="" value="" required="">-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="id">Cédula</label>
                                <s:textfield type = "text" cssClass="form-control" id="id" name = "fr.id_cliente" placeholder="Cédula" required="required" value=""></s:textfield>
                                    <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="phone">Teléfono</label>
                                <s:textfield type = "text" cssClass="form-control" id="phone" name = "fr.telefono" placeholder="12345678" required="required"></s:textfield>
                                    <!--<input type="text" class="form-control" id="phone" placeholder="" value="" required="">-->
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="email">Correo electrónico</label>
                            <s:textfield type = "text" cssClass="form-control" id="email" name = "fr.correo" placeholder="ticobooking@correo.com" required="required"></s:textfield>
                                <!--<input type="email" class="form-control" id="email" placeholder="" value="" required="">-->
                                <div class="invalid-feedback">
                                    Este campo es requerido.
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="repeatemail">Repita su correo electrónico</label>
                                <input type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required="">
                                <div class="invalid-feedback">
                                    Este campo es requerido.
                                </div>
                            </div>
                            <hr class="mb-4">

                            <h4 class="mb-3">Datos de reservación</h4>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="persons">Cantidad de Pasajeros</label>
                                <s:textfield type = "number" id="cantidad" cssClass="form-control" name = "fr.cantpasajeros" placeholder="" required="required"></s:textfield>    
                                    <div class="invalid-feedback">
                                        Ingrese un número entre 1 y 10.
                                    </div>
                                </div> 
                                <div class="col-md-6 mb-3">
                                    <label for="persons">Clase</label>
                                <s:select cssClass="custom-select d-block w-100" headerKey="-1" headerValue="Clase" list="{'Economica','Economica Superior','Business', 'Primera'}" id="persons" name="fr.clase"></s:select>
                                    <div class="invalid-feedback">
                                        Seleccione una opción.
                                    </div>
                                </div> 



                                <div style="display:none;" class="col-md-6 mb-3">
                                <s:textfield type = "text" cssClass="form-control" id="selectedtext" name = "fr.asientos" placeholder="" required="required" readonly="true" ></s:textfield>
                                    <div class="invalid-feedback">
                                        Este campo es requerido.
                                    </div>
                                </div>
                            </div>



                        <s:iterator  value="flight_info">
                            <div class="mb-3">
                                <div class="mx-auto">
                                    <div class="list-group-item">
                                        <p><strong>Fecha del Vuelo:</strong> <s:property value="fecha.getValue()"></s:property></p>
                                        <p><strong>Hora de Salida:</strong> <s:property value="horasalida.getValue()"></s:property></p>
                                        <p><strong>Hora de Llegada:</strong> <s:property value="horallegada.getValue()"></s:property></p>
                                        <p><strong>Aeronave:</strong> <s:property value="avion.getValue()"></s:property></p>
                                        <p><strong>Costo por Tiquete: </strong> <s:property value="costo.getValue()"></s:property></p>
                                            <div style="display:none;">
                                                <input type="text" class="form-control" name="fr.costo" value="<s:property value="costo.getValue()"></s:property>" >
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </s:iterator>
                    </div>

                    <div class="col-md-5 order-md-2">

                        <s:iterator  value="flight_info">
                            <center><img class="card-img-right flex-auto d-none d-md-block" width="220" style="padding-top: 25px;" src="<s:property value="imagen.getValue()"></s:property>" alt="img_aero"></center><br>
                                <div class="mb-3">
                                    <div class="mx-auto">
                                        <div class="list-group-item">
                                            <p><strong>Vuelo: <s:property value="aerolinea.getValue()"></s:property> - <s:property value="vuelo.getValue()"></s:property></strong></p>
                                        <p><strong>Origen:</strong> <s:property value="origen.getValue()"></s:property></p>
                                        <p><strong>Destino:</strong> <s:property value="destino.getValue()"></s:property> </p>
                                        <p><strong>Duración:</strong> <s:property value="duracion.getValue()"></s:property></p>
                                        </div>
                                    </div>
                                </div>
                        </s:iterator>

                        <!-- Seleccionar Asientos -->
                        <div class="theatre">
                            <div class="screen-side">
                                <div class="screen"></div>
                                <h6 class="select-text">Seleccione sus asientos</h5>
                                    <input type="text" class="form-control" id="selectedtext2" placeholder="" value="" required="">
                                    </div>
                                    <div class="exit exit--front">
                                    </div>
                                    <ol class="cabin">
                                        <li class="row--1">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="1A" type="checkbox" name="chk" id="1A"/>
                                                    <label for="1A">1A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="1B" type="checkbox" name="chk" id="1B" />
                                                    <label for="1B">1B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="1C" type="checkbox" name="chk" id="1C" />
                                                    <label for="1C">1C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="1D" type="checkbox" name="chk" id="1D" />
                                                    <label for="1D">1D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="1E" type="checkbox" name="chk" id="1E" />
                                                    <label for="1E">1E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="1F" type="checkbox" name="chk" id="1F" />
                                                    <label for="1F">1F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--2">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="2A" type="checkbox" name="chk" id="2A" />
                                                    <label for="2A">2A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="2B" type="checkbox" name="chk" id="2B" />
                                                    <label for="2B">2B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="2C" type="checkbox" name="chk" id="2C" />
                                                    <label for="2C">2C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="2D" type="checkbox" name="chk" id="2D" />
                                                    <label for="2D">2D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="2E" type="checkbox" name="chk" id="2E" />
                                                    <label for="2E">2E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="2F" type="checkbox" name="chk" id="2F" />
                                                    <label for="2F">2F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--3">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="3A" type="checkbox" name="chk" id="3A" />
                                                    <label for="3A">3A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="3B" type="checkbox" name="chk" id="3B" />
                                                    <label for="3B">3B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="3C" type="checkbox" name="chk" id="3C" />
                                                    <label for="3C">3C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="3D" type="checkbox" name="chk" id="3D" />
                                                    <label for="3D">3D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="3E" type="checkbox" name="chk" id="3E" />
                                                    <label for="3E">3E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="3F" type="checkbox" name="chk" id="3F" />
                                                    <label for="3F">3F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--4">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="4A" type="checkbox" name="chk" id="4A" />
                                                    <label for="4A">4A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="4B" type="checkbox" name="chk" id="4B" />
                                                    <label for="4B">4B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="4C" type="checkbox" name="chk" id="4C" />
                                                    <label for="4C">4C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="4D" type="checkbox" name="chk" id="4D" />
                                                    <label for="4D">4D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="4E" type="checkbox" name="chk" id="4E" />
                                                    <label for="4E">4E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="4F" type="checkbox" name="chk" id="4F" />
                                                    <label for="4F">4F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--5">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="5A" type="checkbox" name="chk" id="5A" />
                                                    <label for="5A">5A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="5B" type="checkbox" name="chk" id="5B" />
                                                    <label for="5B">5B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="5C" type="checkbox" name="chk" id="5C" />
                                                    <label for="5C">5C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="5D" type="checkbox" name="chk" id="5D" />
                                                    <label for="5D">5D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="5E" type="checkbox" name="chk" id="5E" />
                                                    <label for="5E">5E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="5F" type="checkbox" name="chk" id="5F" />
                                                    <label for="5F">5F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--6">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="6A" type="checkbox" name="chk" id="6A" />
                                                    <label for="6A">6A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="6B"type="checkbox" name="chk" id="6B" />
                                                    <label for="6B">6B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="6C" type="checkbox" name="chk" id="6C" />
                                                    <label for="6C">6C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="6D" type="checkbox" name="chk" id="6D" />
                                                    <label for="6D">6D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="6E" type="checkbox" name="chk" id="6E" />
                                                    <label for="6E">6E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="6F" type="checkbox" name="chk" id="6F" />
                                                    <label for="6F">6F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--7">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="7A" type="checkbox" name="chk" id="7A" />
                                                    <label for="7A">7A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="7B" type="checkbox" name="chk" id="7B" />
                                                    <label for="7B">7B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="7C" type="checkbox" name="chk" id="7C" />
                                                    <label for="7C">7C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="7D" type="checkbox" name="chk" id="7D" />
                                                    <label for="7D">7D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="7E" type="checkbox" name="chk" id="7E" />
                                                    <label for="7E">7E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="7F" type="checkbox" name="chk" id="7F" />
                                                    <label for="7F">7F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <li class="row--8">
                                            <ol class="seats" type="A">
                                                <li class="seat">
                                                    <input class="form-check-input" value="8A" type="checkbox" name="chk" id="8A" />
                                                    <label for="8A">8A</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="8B" type="checkbox" name="chk" id="8B" />
                                                    <label for="8B">8B</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="8C" type="checkbox" name="chk" id="8C" />
                                                    <label for="8C">8C</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="8D" type="checkbox" name="chk" id="8D" />
                                                    <label for="8D">8D</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="8E" type="checkbox" name="chk" id="8E" />
                                                    <label for="8E">8E</label>
                                                </li>
                                                <li class="seat">
                                                    <input class="form-check-input" value="8F" type="checkbox" name="chk" id="8F" />
                                                    <label for="8F">8F</label>
                                                </li>
                                            </ol>
                                        </li>
                                        <!--                            <li class="row--9">
                                                                        <ol class="seats" type="A">
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="9A" type="checkbox" id="9A" />
                                                                                <label for="9A">9A</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="9B" type="checkbox" id="9B" />
                                                                                <label for="9B">9B</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="9C" type="checkbox" id="9C" />
                                                                                <label for="9C">9C</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="9D" type="checkbox" id="9D" />
                                                                                <label for="9D">9D</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="9E" type="checkbox" id="9E" />
                                                                                <label for="9E">9E</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="9F" type="checkbox" id="9F" />
                                                                                <label for="9F">9F</label>
                                                                            </li>
                                                                        </ol>
                                                                    </li>
                                                                    <li class="row--10">
                                                                        <ol class="seats" type="A">
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="10A" type="checkbox" id="10A" />
                                                                                <label for="10A">10A</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="10B" type="checkbox" id="10B" />
                                                                                <label for="10B">10B</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="10C" type="checkbox" id="10C" />
                                                                                <label for="10C">10C</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="10D" type="checkbox" id="10D" />
                                                                                <label for="10D">10D</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="10E" type="checkbox" id="10E" />
                                                                                <label for="10E">10E</label>
                                                                            </li>
                                                                            <li class="seat">
                                                                                <input class="form-check-input" value="10F" type="checkbox" id="10F" />
                                                                                <label for="10F">10F</label>
                                                                            </li>
                                                                        </ol>
                                                                    </li>-->
                                    </ol>
                                    <div class="exit exit--back">
                                    </div>
                            </div>
                        </div>
                    </div>
                    <center><button style="max-width:200px; margin-right: 90px;" class="btn btn-success btn-block" type="submit" name="submitType">Reservar</button></center>
                    </s:form>
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

            <script type="text/javascript">
                $(document).ready(function () {
                    $('.form-check-input').click(function () {
                        var text = "";
                        $('.form-check-input:checked').each(function () {
                            text += $(this).val() + ' | ';
                        });
                        text = text.substring(0, text.length - 1);
                        $('#selectedtext').val(text);
                        $('#selectedtext2').val(text);
                    });
                });
            </script>

            <script>
                (function () {
                    'use strict'

                    window.addEventListener('load', function () {
                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.getElementsByClassName('needs-validation')

                        // Loop over them and prevent submission
                        Array.prototype.filter.call(forms, function (form) {
                            form.addEventListener('submit', function (event) {
                                if (form.checkValidity() === false) {
                                    event.preventDefault()
                                    event.stopPropagation()
                                }
                                form.classList.add('was-validated')
                            }, false)
                        })
                    }, false)
                }());
            </script>

            <script>
                $("input[name=chk]").change(function () {
                    var max = document.getElementById('cantidad').value;
                    if ($("input[name=chk]:checked").length == max) {
                        $("input[name=chk]").attr('disabled', 'disabled');
                        $("input[name=chk]:checked").removeAttr('disabled');
                    } else {
                        $("input[name=chk]").removeAttr('disabled');
                    }
                });
            </script>

    </body>
</html>

