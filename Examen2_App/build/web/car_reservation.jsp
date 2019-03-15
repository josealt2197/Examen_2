<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
        </div><!-- /header -->

        <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
            <h1 class="ui-title" role="heading" style="color:#28A745;">Reservación</h1>
            <p>Llena los espacios que se solicitan abajo para completar la reservación.</p>

            <hr><hr>

            <div class="ui-grid-a ui-responsive">
                <div class="ui-block-a">
                    <div class="ui-body ui-body-d">                    

                        <div>
                            <div>
                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">Ford Fiesta</h1><br>
                                <div>
                                    <div>
                                        <center>
                                            <img width="300px" src="img/ford.jpg"><br>
                                        </center>
                                        <ul style="list-style-type: none;">
                                            <h2>Empresa</h2>
                                            <li>Enterprise Rent-A-Car</li>
                                        </ul>
                                        <ul style="list-style-type: none;" >
                                            <h2>Tipo</h2>
                                            <li>Compacto</li>
                                        </ul>
                                        <ul style="list-style-type: none;" >
                                            <h2>Kilometraje</h2>
                                            <li>Ilimitado</li>
                                        </ul>
                                        <ul style="list-style-type: none;" >
                                            <h2>Transmisión</h2>
                                            <li>Manual</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr><hr>
                </div>
                
                <div class="ui-block-b">
                    <div class="ui-body ui-body-d">

                        <div class='alert alert-success'>
                            <strong>¿Aún no has iniciado sesión?</strong><p>Puedes iniciar sesión para completar tus datos personales con tu perfil o crea una cuenta para estar en contacto contigo.</p>
                        </div>
                        <h4 class="mb-3">Datos personales</h4>
                        <s:form theme="simple" cssClass="needs-validation" action = "registrar_reservacion" id="registration_form" method = "post">
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="firstName">Nombre</label>
                                    <s:textfield type="text" cssClass="form-control" id="firstName" placeholder="" value="" required="required"></s:textfield>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="lastName">Apellidos</label>
                                    <s:textfield type="text" cssClass="form-control" id="lastName" placeholder="" value="" required="required"></s:textfield>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="phone">Teléfono</label>
                                    <s:textfield type="text" cssClass="form-control" id="phone" placeholder="" value="" required="required"></s:textfield>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="email">Correo electrónico</label>
                                <s:textfield type="email" cssClass="form-control" id="email" placeholder="ticobooking@correo.com" value="" required="required"></s:textfield>
                            </div>

                            <div class="mb-3">
                                <label for="repeatemail">Repita su correo electrónico</label>
                                <s:textfield type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required="required"></s:textfield>
                            </div>
                            <hr class="mb-4">

                            <h4 class="mb-3">Datos de reservación</h4>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="check-in-date">Fecha de entrada</label>
                                    <s:textfield type="date" cssClass="form-control" id="check-in-date" placeholder="" required="required"></s:textfield>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="check-in-time">Hora de entrada</label>
                                    <s:textfield type="time" cssClass="form-control" id="check-in-time" placeholder="" required="required"></s:textfield>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="check-out-date">Fecha de salida</label>
                                    <s:textfield type="date" cssClass="form-control" id="check-in-date" placeholder="" required="required"></s:textfield>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="check-out-time">Hora de salida</label>
                                    <s:textfield type="time" cssClass="form-control" id="check-out-time" placeholder="" required="required"></s:textfield>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="lugar-r">Recoger</label>
                                    <s:textfield type="text" cssClass="form-control" id="lugar-r" placeholder="" required="required"></s:textfield>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lugar-f">Dejar</label>
                                    <s:textfield type="text" cssClass="form-control" id="lugar-f" placeholder="" required="required"></s:textfield>
                                </div>
                            </div>
                            <hr class="mb-4">

                            <h4 class="mb-3">Envía alguna petición/comentario</h4>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label for="comments">Comentarios</label>
                                    <s:textarea id="comments" cssClass="form-control" cols="30" rows="8"></s:textarea>
                                    <small class="text-muted">Las peticiones especiales no se pueden garantizar, pero haremos todo lo posible para atender tu solicitud de la mejor manera. 
                                    ¡También puedes enviarnos tu petición especial cuando hayas realizado la reserva!</small>
                                </div>
                            </div> 

                            <hr class="mb-4">
                            <center>
                                <button class="btn btn-success btn-lg btn-block" style="max-width:200px;" type="submit">Reservar</button>
                            </center>
                        </s:form>


                    </div> 
                </div>
            </div><!-- /grid-a -->

        </div><!-- /content -->

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
    </div><!-- /page1 -->

</body>
</html>
