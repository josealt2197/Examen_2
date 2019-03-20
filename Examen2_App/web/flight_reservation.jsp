<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>TicoBooking</title>
        <link rel="stylesheet" href="jqmobile/demos/_assets/css/jqm-demos.css">
        <link rel="stylesheet" href="css/theme/customAB.css" />
        <link rel="stylesheet" href="css/theme/jquery.mobile.icons.min.css" />
        <link rel="stylesheet" href="jqmobile/demos/css/themes/default/jquery.mobile.structure-1.4.5.min.css">
        <link rel="shortcut icon" href="./img/costa-rica64.png">

        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" crossorigin="anonymous">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

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
                            <s:iterator  value="flight_info">
                                <div>
                                    <div>
                                        <h3 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;"><s:property value="origen.getValue()"></s:property> - <s:property value="destino.getValue()"></s:property></h3><br>
                                            <div>
                                                <div>
                                                    <center>
                                                            <img width="290px" src="<s:property value="imagen.getValue()"></s:property>"><br>
                                                    </center>
                                                    <ul style="list-style-type: none;">
                                                        <h2>Salida:</h2>
                                                        <li><s:property value="horasalida.getValue()"></s:property></li>
                                                    </ul>
                                                    <ul style="list-style-type: none;" >
                                                        <h2>Llegada:</h2>
                                                        <li><s:property value="horallegada.getValue()"></s:property></li>
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
                            <s:form  theme="simple" cssClass="needs-validation" action = "reservacion_vuelo" method = "post">
                                <div style="display:none;">
                                    <input type="text" class="form-control" name="fr.id_vuelo" value="<s:property value='id_vuelo'/>" >
                                </div>
                                <div class="row">
                                    <div class="col-md-4 mb-3">
                                        <label for="id">Cédula</label>
                                        <s:textfield type = "text" cssClass="form-control" id="id" name = "fr.id_cliente" placeholder="Cédula" required="required" value=""></s:textfield>
                                            <!--<input type="text" class="form-control" id="firstName" placeholder="" value="" required="">-->
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="firstName">Nombre</label>
                                        <s:textfield type = "text" cssClass="form-control" id="firstname" name = "fr.nombre" placeholder="Nombre" required="required"></s:textfield>
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="lastName">Apellidos</label>
                                        <s:textfield type = "text" cssClass="form-control" id="lastName" name = "fr.apellido" placeholder="Apellidos" required="required"></s:textfield>
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="phone">Teléfono</label>
                                        <s:textfield type = "text" cssClass="form-control" id="phone" name = "fr.telefono" placeholder="85603215" required="required"></s:textfield>
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="email">Correo electrónico</label>
                                    <s:textfield type = "text" cssClass="form-control" id="email" name = "fr.correo" placeholder="ticobooking@correo.com" required="required"></s:textfield>
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
                                            <label for="persons">Cantidad de pasajeros</label>
                                        <s:select cssClass="custom-select d-block w-100" headerKey="-1" headerValue="Cantidad" list="{1,2,3,4,5,6,7,8,9}" id="persons" name="fr.cantpasajeros"></s:select>
                                            <div class="invalid-feedback">
                                                Seleccione una opción.
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="class">Clase</label>
                                        <s:select cssClass="custom-select d-block w-100" headerKey="-1" headerValue="Clase" list="{'Economica','Economica Superior','Business', 'Primera'}" id="class" name="fr.clase"></s:select>
                                            <div class="invalid-feedback">
                                                Seleccione una opción.
                                            </div>
                                        </div>
                                        <div style="display:none" class="col-md-6 mb-3">
                                            <label for="asientos">Asientos</label>
                                        <s:textfield type = "text" cssClass="form-control" id="cantidad" name = "fr.asientos" placeholder="" readonly="true" ></s:textfield>
                                            <div class="invalid-feedback">
                                                Este campo es requerido.
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="mb-4">
                                    <label for="seat">Asientos</label>

                                    <div class="row">
                                        <div class="col-md-10">
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

                                                        </ol>
                                                        <div class="exit exit--back">
                                                        </div>
                                                </div>
                                            </div>
                                        </div>

                                        <hr class="mb-4">
                                    <s:iterator value="flight_info">
                                        <div>
                                            <input type="text" class="form-control" name="fr.costo" readonly="true" value="<s:property value="costo.getValue()"></s:property>" >
                                            </div>
                                    </s:iterator>

                                    <hr class="mb-4">
                                    <center>
                                        <button class="btn btn-success btn-block" style="margin: 20px auto;" name="submitType" type="submit">Reservar</button>
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
