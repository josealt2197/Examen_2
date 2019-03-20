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
                <s:if test="%{#session.session_correo != null}">
                    <a href="login.jsp" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h1 class="ui-title" role="heading" style="color:#28A745;">Reservación</h1>
                <p>Llena los espacios que se solicitan abajo para completar la reservación.</p>

                <hr><hr>

                <div class="ui-grid-a ui-responsive">
                    <div class="ui-block-a">
                        <div class="ui-body ui-body-d">                    
                            <s:iterator  value="car_info">
                                <div>
                                    <div>
                                        <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;"><s:property value="modelo.getValue()"></s:property></h1><br>
                                            <div>
                                                <div>
                                                    <center>
                                                        <img width="290px" src="<s:property value="imagen.getValue()"></s:property>"><br>
                                                    </center>
                                                    <ul style="list-style-type: none;">
                                                        <h2>Empresa:</h2>
                                                        <li><s:property value="empresa.getValue()"></s:property></li>
                                                    </ul>
                                                    <ul style="list-style-type: none;" >
                                                        <h2>Tipo:</h2>
                                                        <li><s:property value="tipo.getValue()"></s:property></li>
                                                    </ul>
                                                    <ul style="list-style-type: none;" >
                                                        <h2>Kilometraje:</h2>
                                                        <li><s:property value="tipo.getValue()"></s:property></li>
                                                    </ul>
                                                    <ul style="list-style-type: none;" >
                                                        <h2>Transmisión:</h2>
                                                        <li><s:property value="transmision.getValue()"></s:property></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </s:iterator>
                        </div>
                        <hr><hr>
                    </div>

                    <div class="ui-block-b">
                        <div class="ui-body ui-body-d">

                            <div class='alert alert-success'>
                                <strong>¿Aún no has iniciado sesión?</strong><br><p>Puedes <a href="login.jsp" rel="external" style="text-decoration: none;">iniciar sesión</a> para completar tus datos personales con tu perfil o <a href="pre_register.jsp" rel="external" style="text-decoration: none;">crea una cuenta</a> para estar en contacto contigo.</p>
                            </div>
                            <h4 class="mb-3">Datos personales</h4>
                            <s:form theme="simple" cssClass="needs-validation" action = "reservacion_vehiculo" method = "post">
                                <div class="row">
                                    <div style="display:none">
                                        <input type="text" class="form-control" name="cr.id_vehiculo" value="<s:property value='id_vehiculo'/>" >
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="id">Cédula</label>
                                        <s:textfield type = "text" cssClass="form-control" id="id" name = "cr.id_cliente" placeholder="Cédula" required="required" value=""></s:textfield>
                                            <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="firstName">Nombre</label>
                                        <s:textfield type="text" cssClass="form-control" name = "cr.nombre" placeholder="Nombre" value="" required="required"></s:textfield>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="lastName">Apellidos</label>
                                        <s:textfield type="text" cssClass="form-control" name = "cr.apellido" placeholder="Apellidos" value="" required="required"></s:textfield>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="phone">Teléfono</label>
                                        <s:textfield type="text" cssClass="form-control" name = "cr.telefono" placeholder="85603215" value="" required="required"></s:textfield>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="email">Correo electrónico</label>
                                    <s:textfield type="email" cssClass="form-control" name = "cr.correo" placeholder="ticobooking@correo.com" value="" required="required"></s:textfield>
                                        <div class="invalid-feedback">
                                            Este campo es requerido.
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="repeatemail">Repita su correo electrónico</label>
                                        <input type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required>
                                        <div class="invalid-feedback">
                                            Este campo es requerido.
                                        </div>
                                    </div>
                                    <hr class="mb-4">

                                    <h4 class="mb-3">Datos de reservación</h4>

                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="check-in-date">Fecha de Pick-up</label>
                                        <s:textfield type="date" cssClass="form-control" name = "cr.fentrada" placeholder="Fecha de entrada" required="required"></s:textfield>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="check-in-time">Hora de Pick-up</label>
                                        <s:textfield type="time" cssClass="form-control" name = "cr.hentrada" placeholder="Hora de entrada" required="required"></s:textfield>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-3">
                                            <label for="check-out-date">Fecha de Drop-off</label>
                                        <s:textfield type="date" cssClass="form-control" name = "cr.fsalida" placeholder="Fecha de salida" required="required"></s:textfield>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="check-out-time">Hora de Drop-off</label>
                                        <s:textfield type="time" cssClass="form-control" name = "cr.hsalida" placeholder="Hora de salida" required="required"></s:textfield>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="pick-place">Lugar de Pick-up / Drop-off</label>
                                    <s:textfield type = "text" cssClass="form-control" id="check-in" name = "cr.lugar" placeholder="Fecha de entrada" required="required"></s:textfield>
                                        <div class="invalid-feedback">
                                            Este campo es requerido.
                                        </div>
                                    </div>

                                    <!--                                COSTO DE VEHICULOS->AGREGAR A TABLA Y MVC STRUTS-->
                                <s:iterator  value="car_info">
                                    <div class="mb-3">
                                        <label for="pick-place">Costo</label>
                                        <input type="text" class="form-control" name="cr.id_vehiculo" readonly="true" value="<s:property value="precioxdia"></s:property>" >
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                </s:iterator>

                                <hr class="mb-4">
                                <center>
                                    <button class="btn btn-success btn-lg btn-block" style="max-width:200px;" name="submitType" type="submit">Reservar</button>
                                </center>
                            </s:form>


                        </div> 
                    </div>
                </div><!-- /grid-a -->

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
        </div><!-- /page1 -->

    </body>
</html>
