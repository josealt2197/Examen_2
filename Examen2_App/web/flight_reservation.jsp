<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <h1 class="ui-title" role="heading" style="font-weight: 700; color:#28A745;">San José-Juan(SJO) - Barcelona(BCN)</h1><br>
                                <div>
                                    <div>
                                        <ul style="list-style-type: none;">
                                            <h2>Salida:</h2>
                                            <li>16:05 - Juan Santamaria</li>
                                        </ul>
                                        <ul style="list-style-type: none;" >
                                            <h2>Llegada:</h2>
                                            <li>12:55 +1 día Aeropuerto de Barcelona-El Prat</li>
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
                        <form class="needs-validation" novalidate="">
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="firstName">Nombre</label>
                                    <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="lastName">Apellidos</label>
                                    <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="phone">Teléfono</label>
                                    <input type="text" class="form-control" id="phone" placeholder="" value="" required="">
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="email">Correo electrónico</label>
                                <input type="email" class="form-control" id="email" placeholder="ticobooking@correo.com" value="" required="">
                            </div>

                            <div class="mb-3">
                                <label for="repeatemail">Repita su correo electrónico</label>
                                <input type="email" class="form-control" id="repeatemail" placeholder="ticobooking@correo.com" value="" required="">
                            </div>
                            <hr class="mb-4">

                            <h4 class="mb-3">Datos de reservación</h4>

                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label for="persons">Cantidad de pasajeros</label>
                                    <select class="" id="persons" style="max-width:100px;">
                                        <option value="">...</option>
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                    </select>
                                </div> 
                            </div>
                            <hr class="mb-4">
                            <label for="seat">Asientos</label>

                            <div class="row">
                                <div class="col-md-10">
                                    <div class="theatre">
                                      <div class="screen-side">
                                        <div class="screen">Screen</div>
                                        <h3 class="select-text">Seleccione un asiento</h3>
                                    </div>
                                    <div class="exit exit--front">
                                    </div>
                                    <ol class="cabin">
                                        <li class="row row--1">
                                          <ol class="seats" type="A">
                                            <li class="seat">
                                              <input type="checkbox" id="1A">
                                              <label for="1A">1A</label>
                                          </li>
                                          <li class="seat">
                                              <input type="checkbox" id="1B">
                                              <label for="1B">1B</label>
                                          </li>
                                          <li class="seat">
                                              <input type="checkbox" id="1C">
                                              <label for="1C">1C</label>
                                          </li>
                                          <li class="seat">
                                              <input type="checkbox" disabled id="1D">
                                              <label for="1D">Occupied</label>
                                          </li>
                                          <li class="seat">
                                              <input type="checkbox" id="1E">
                                              <label for="1E">1E</label>
                                          </li>
                                          <li class="seat">
                                              <input type="checkbox" id="1F">
                                              <label for="1F">1F</label>
                                          </li>
                                      </ol>
                                  </li>
                                  <li class="row row--2">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="2A">
                                            <label for="2A">2A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2B">
                                            <label for="2B">2B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2C">
                                            <label for="2C">2C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2D">
                                            <label for="2D">2D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2E">
                                            <label for="2E">2E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="2F">
                                            <label for="2F">2F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--3">
                                    <ol class="seats" type="A">
                                        <li class="seat">
                                            <input type="checkbox" id="3A">
                                            <label for="3A">3A</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3B">
                                            <label for="3B">3B</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3C">
                                            <label for="3C">3C</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3D">
                                            <label for="3D">3D</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3E">
                                            <label for="3E">3E</label>
                                        </li>
                                        <li class="seat">
                                            <input type="checkbox" id="3F">
                                            <label for="3F">3F</label>
                                        </li>
                                    </ol>
                                </li>
                                <li class="row row--4">
                                  <ol class="seats" type="A">
                                    <li class="seat">
                                      <input type="checkbox" id="4A">
                                      <label for="4A">4A</label>
                                  </li>
                                  <li class="seat">
                                      <input type="checkbox" id="4B">
                                      <label for="4B">4B</label>
                                  </li>
                                  <li class="seat">
                                      <input type="checkbox" id="4C">
                                      <label for="4C">4C</label>
                                  </li>
                                  <li class="seat">
                                      <input type="checkbox" id="4D">
                                      <label for="4D">4D</label>
                                  </li>
                                  <li class="seat">
                                      <input type="checkbox" id="4E">
                                      <label for="4E">4E</label>
                                  </li>
                                  <li class="seat">
                                      <input type="checkbox" id="4F">
                                      <label for="4F">4F</label>
                                  </li>
                              </ol>
                          </li>
                          <li class="row row--5">
                              <ol class="seats" type="A">
                                <li class="seat">
                                  <input type="checkbox" id="5A">
                                  <label for="5A">5A</label>
                              </li>
                              <li class="seat">
                                  <input type="checkbox" id="5B">
                                  <label for="5B">5B</label>
                              </li>
                              <li class="seat">
                                  <input type="checkbox" id="5C">
                                  <label for="5C">5C</label>
                              </li>
                              <li class="seat">
                                  <input type="checkbox" id="5D">
                                  <label for="5D">5D</label>
                              </li>
                              <li class="seat">
                                  <input type="checkbox" id="5E">
                                  <label for="5E">5E</label>
                              </li>
                              <li class="seat">
                                  <input type="checkbox" id="5F">
                                  <label for="5F">5F</label>
                              </li>
                          </ol>
                      </li>
                      <li class="row row--6">
                          <ol class="seats" type="A">
                            <li class="seat">
                              <input type="checkbox" id="6A">
                              <label for="6A">6A</label>
                          </li>
                          <li class="seat">
                              <input type="checkbox" id="6B">
                              <label for="6B">6B</label>
                          </li>
                          <li class="seat">
                              <input type="checkbox" id="6C">
                              <label for="6C">6C</label>
                          </li>
                          <li class="seat">
                              <input type="checkbox" id="6D">
                              <label for="6D">6D</label>
                          </li>
                          <li class="seat">
                              <input type="checkbox" id="6E">
                              <label for="6E">6E</label>
                          </li>
                          <li class="seat">
                              <input type="checkbox" id="6F">
                              <label for="6F">6F</label>
                          </li>
                      </ol>
                  </li>
                  <li class="row row--7">
                      <ol class="seats" type="A">
                        <li class="seat">
                          <input type="checkbox" id="7A">
                          <label for="7A">7A</label>
                      </li>
                      <li class="seat">
                          <input type="checkbox" id="7B">
                          <label for="7B">7B</label>
                      </li>
                      <li class="seat">
                          <input type="checkbox" id="7C">
                          <label for="7C">7C</label>
                      </li>
                      <li class="seat">
                          <input type="checkbox" id="7D">
                          <label for="7D">7D</label>
                      </li>
                      <li class="seat">
                          <input type="checkbox" id="7E">
                          <label for="7E">7E</label>
                      </li>
                      <li class="seat">
                          <input type="checkbox" id="7F">
                          <label for="7F">7F</label>
                      </li>
                  </ol>
              </li>
              <li class="row row--8">
                  <ol class="seats" type="A">
                    <li class="seat">
                      <input type="checkbox" id="8A">
                      <label for="8A">8A</label>
                  </li>
                  <li class="seat">
                      <input type="checkbox" id="8B">
                      <label for="8B">8B</label>
                  </li>
                  <li class="seat">
                      <input type="checkbox" id="8C">
                      <label for="8C">8C</label>
                  </li>
                  <li class="seat">
                      <input type="checkbox" id="8D">
                      <label for="8D">8D</label>
                  </li>
                  <li class="seat">
                      <input type="checkbox" id="8E">
                      <label for="8E">8E</label>
                  </li>
                  <li class="seat">
                      <input type="checkbox" id="8F">
                      <label for="8F">8F</label>
                  </li>
              </ol>
          </li>
          <li class="row row--9">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="9A">
                  <label for="9A">9A</label>
              </li>
              <li class="seat">
                  <input type="checkbox" id="9B">
                  <label for="9B">9B</label>
              </li>
              <li class="seat">
                  <input type="checkbox" id="9C">
                  <label for="9C">9C</label>
              </li>
              <li class="seat">
                  <input type="checkbox" id="9D">
                  <label for="9D">9D</label>
              </li>
              <li class="seat">
                  <input type="checkbox" id="9E">
                  <label for="9E">9E</label>
              </li>
              <li class="seat">
                  <input type="checkbox" id="9F">
                  <label for="9F">9F</label>
              </li>
          </ol>
      </li>
      <li class="row row--10">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="10A">
              <label for="10A">10A</label>
          </li>
          <li class="seat">
              <input type="checkbox" id="10B">
              <label for="10B">10B</label>
          </li>
          <li class="seat">
              <input type="checkbox" id="10C">
              <label for="10C">10C</label>
          </li>
          <li class="seat">
              <input type="checkbox" id="10D">
              <label for="10D">10D</label>
          </li>
          <li class="seat">
              <input type="checkbox" id="10E">
              <label for="10E">10E</label>
          </li>
          <li class="seat">
              <input type="checkbox" id="10F">
              <label for="10F">10F</label>
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
<center>
    <button class="btn btn-success btn-lg btn-block" style="max-width:200px;" type="submit">Reservar</button>
</center>
</form>


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
