<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
                    <a href="logout" rel="external" data-icon="action" data-iconpos="notext">Cerrar Sesión</a>
                </s:if>
            </div><!-- /header -->

            <div data-role="main" class="ui-content jqm-content jqm-fullwidth">
                <h1 class="ui-title" role="heading" style="color:#28A745;">Reservación</h1>
                <p>Llena los espacios que se solicitan abajo para completar la reservación.</p>

                <hr><hr>

                <div class="ui-grid-a ui-responsive">
                    <div class="ui-block-a">
                        <div class="ui-body ui-body-d">                    
                            <s:iterator value="hotel_info">
                                <div>
                                    <div>
                                        <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;"><s:property value="NombreHos.getValue()"></s:property></h1><br>
                                            <div>
                                                <div>
                                                    <center>
                                                        <img width="290" src="<s:property value="ImagenDetail.getValue()"></s:property>"><br>
                                                    </center>
                                                    <ul style="list-style-type: none;">
                                                        <li><h2>Ubicación</h2></li>
                                                        <li><s:property value="UbicacionExacta.getValue()"></s:property></li>
                                                    </ul>
                                                    <ul style="list-style-type: none;" >
                                                        <li><h2>Detalles</h2></li>
                                                        <li>Está en nuestra selección para <s:property value="ProvinciaHos.getValue()"></s:property></li>
                                                        <li><h2>Incluye</h2></li>
                                                        <li><s:property value="ServiciosIncluidos.getValue()"></s:property></li>
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
                            <s:fielderror/>
                            <s:form theme="simple" cssClass="needs-validation" action = "registrar_reservacion" method = "post">
                                <div class="row">
                                    <div class="col-md-4 mb-3">
                                        <label for="id">Cédula</label>
                                        <input type="text" class="form-control" name = "r.id_cliente" id="id" placeholder="Cédula" value='<s:property value="#session.session_cedula"/>' required="">
                                            <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="firstName">Nombre</label>
                                        <input type="text" class="form-control" name = "r.nombre" id="firstName" placeholder="Nombre" value='<s:property value="#session.session_nombre"/>' required="">
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="lastName">Apellidos</label>
                                         <input type="text" class="form-control" name = "r.apellido" id="lastName" placeholder="Apellidos" value='<s:property value="#session.session_apellido"/>' required="">
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="phone">Teléfono</label>
                                        <input type="text" class="form-control" name = "r.telefono" id="phone" placeholder="12345678" value='<s:property value="#session.session_telefono"/>' required="">
                                        </div>
                                    </div>

                                    <div class="mb-3" style="display: none;">
                                        <label for="idhotel">ID Hotel</label>
                                        <input type="text" name="r.id_hospedaje" value='<s:property value="id_hotel"/>'>
                                </div>


                                <div class="mb-3">
                                    <label for="email">Correo electrónico</label>
                                    <input type="email" class="form-control" name = "r.correo" id="email" placeholder="ticobooking@correo.com" value='<s:property value="#session.session_correo"/>' required="">
                                    </div>

                                    <div class="mb-3">
                                        <label for="repeatemail">Repita su correo electrónico</label>
                                        <input type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required="">
                                    </div>
                                    <hr class="mb-4">

                                    <h4 class="mb-3">Datos de reservación</h4>

                                    <div>
                                        <label for="daterangel">Tiempo de estadía</label>
                                        <input type="text" id="daterange1" name="daterange1" value="" onchange="getDate();" required/>
                                    </div>

                                    <div style="display:none;">
                                        <label for="entrada">Entrada</label>
                                        <input type="text" id="entrada" name = "r.entrada" value="" />
                                    </div>

                                    <div style="display:none;">
                                        <label for="salida">Salida</label>
                                        <input type="text" id="salida" name = "r.salida" value="" />
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 mb-3">
                                            <label for="persons">Cantidad de huéspedes</label>
                                        <s:select cssClass="custom-select d-block w-100" headerKey="-1" list="{1,2,3,4,5,6,7,8,9}" name="r.cantidad"></s:select>
                                        </div> 
                                    </div>
                                    <hr class="mb-4">

                                    <h4 class="mb-3">Envía alguna petición/comentario</h4>
                                    <div class="row">
                                        <div class="col-md-12 mb-3">
                                            <label for="comments">Comentarios</label>
                                        <s:textarea cssClass="form-control" cols="30" rows="8"></s:textarea>
                                            <small class="text-muted">Las peticiones especiales no se pueden garantizar, pero haremos todo lo posible para atender tu solicitud de la mejor manera. 
                                                ¡También puedes enviarnos tu petición especial cuando hayas realizado la reserva!</small>
                                        </div>
                                    </div> 
                                <s:iterator value="hotel_info">
                                    <h3>Precio del hospedaje:</h3>
                                    <input type="text" class="form-control" name="r.costo" readonly value="<s:property value="precio"></s:property>"> 
                                </s:iterator>         
                                <hr class="mb-4">
                                <center>
                                    <button class="btn btn-success btn-lg btn-block" name="submitType" style="max-width:200px;" type="submit">Reservar</button>
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
        </div>

        <script>
            $(function () {
                $('input[name="daterange1"]').daterangepicker({
                    startDate: moment().startOf('hour'),
                    endDate: moment().startOf('hour').add(32, 'hour'),
                    minYear: 2019,
                    drops: "down",
                    opens: "center",
                });
            });
            /*           $(function () {
             $('input[name="daterange2"]').daterangepicker({
             singleDatePicker: true,
             startDate: moment().startOf('hour'),
             endDate: moment().startOf('hour').add(32, 'hour'),
             
             });
             });*/
        </script>

        <script>
            function getDate() {
                var drp = document.getElementById("daterange1").value;
                var result = drp.split("-");
                document.getElementById("entrada").value = result[0];
                document.getElementById("salida").value = result[1];
            }
        </script>
    </body>
</html>