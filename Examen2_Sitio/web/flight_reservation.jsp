
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <a class="navbar-brand" href="index.html"><span class="pr-2"><img src="img/costa-rica32.png"></span><strong>TicoBooking</strong></a>
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
            <a class="nav-link" href="#">¿Necesitas ayuda?</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="#">Ingresar</a>
          </li>
        </ul>
      </form>
    </div>
  </nav>

  <div class="container">
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
        <form class="needs-validation" novalidate="">
          <div class="row">
            <div class="col-md-4 mb-3">
              <label for="firstName">Nombre</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="lastName">Apellidos</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-4 mb-3">
              <label for="phone">Teléfono</label>
              <input type="text" class="form-control" id="phone" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="email">Correo electrónico</label>
            <input type="email" class="form-control" id="email" placeholder="ticobooking@correo.com" value="" required="">
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
              <label for="check-in">Fecha de entrada</label>
              <input type="date" class="form-control" id="check-in" placeholder="" required="">
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="persons">Cantidad de Pasajeros</label>
              <select class="custom-select d-block w-100" id="persons" required="">
                <option value="">...</option>
                <option value="1">1</option>
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
              <div class="invalid-feedback">
                Seleccione una opción.
              </div>
            </div> 
            <div class="col-md-6 mb-3">
              <label for="asientos">Asientos</label>
              <input type="text" class="form-control" id="asientos" placeholder="" value="" required="">
              <div class="invalid-feedback">
                Este campo es requerido.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <div class="mx-auto">
              <div class="list-group-item">
                <p><strong>Fecha del Vuelo:</strong> jue 25 abr</p>
                <p><strong>Hora de Salida:</strong> 6:48</p>
                <p><strong>Hora de Llegada:</strong> 11:50</p>
                <p><strong>Modalidad:</strong> Directo</p>
                <p><strong>Aeronave:</strong> Boeing 737-800</p>
              </div>
            </div>
          </div>

          <hr class="mb-4">

        </form>
      </div>

      <div class="col-md-5 order-md-2">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted">Vuelo: American Airlines 1204</span>
        </h4>
        <div class="mb-3">
          <div class="mx-auto">
            <div class="list-group-item">
              <p><strong>Origen:</strong> San José, Costa Rica (SJO) </p>
              <p><strong>Destino:</strong> Miami, Florida, EU (MIA) </p>
              <p><strong>Duración:</strong> 3h 02min</p>
            </div>
          </div>
        </div>

        <!-- Seleccionar Asientos -->
        <div class="theatre">
          <div class="screen-side">
            <div class="screen"></div>
            <h3 class="select-text">Seleccione un asiento</h3>
          </div>
          <div class="exit exit--front">
          </div>
          <ol class="cabin">
            <li class="row--1">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="1A" />
                  <label for="1A">1A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="1B" />
                  <label for="1B">1B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="1C" />
                  <label for="1C">1C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" disabled id="1D" />
                  <label for="1D">Occupied</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="1E" />
                  <label for="1E">1E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="1F" />
                  <label for="1F">1F</label>
                </li>
              </ol>
            </li>
            <li class="row--2">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="2A" />
                  <label for="2A">2A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="2B" />
                  <label for="2B">2B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="2C" />
                  <label for="2C">2C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="2D" />
                  <label for="2D">2D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="2E" />
                  <label for="2E">2E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="2F" />
                  <label for="2F">2F</label>
                </li>
              </ol>
            </li>
            <li class="row--3">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="3A" />
                  <label for="3A">3A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="3B" />
                  <label for="3B">3B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="3C" />
                  <label for="3C">3C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="3D" />
                  <label for="3D">3D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="3E" />
                  <label for="3E">3E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="3F" />
                  <label for="3F">3F</label>
                </li>
              </ol>
            </li>
            <li class="row--4">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="4A" />
                  <label for="4A">4A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="4B" />
                  <label for="4B">4B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="4C" />
                  <label for="4C">4C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="4D" />
                  <label for="4D">4D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="4E" />
                  <label for="4E">4E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="4F" />
                  <label for="4F">4F</label>
                </li>
              </ol>
            </li>
            <li class="row--5">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="5A" />
                  <label for="5A">5A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="5B" />
                  <label for="5B">5B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="5C" />
                  <label for="5C">5C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="5D" />
                  <label for="5D">5D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="5E" />
                  <label for="5E">5E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="5F" />
                  <label for="5F">5F</label>
                </li>
              </ol>
            </li>
            <li class="row--6">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="6A" />
                  <label for="6A">6A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="6B" />
                  <label for="6B">6B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="6C" />
                  <label for="6C">6C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="6D" />
                  <label for="6D">6D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="6E" />
                  <label for="6E">6E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="6F" />
                  <label for="6F">6F</label>
                </li>
              </ol>
            </li>
            <li class="row--7">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="7A" />
                  <label for="7A">7A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="7B" />
                  <label for="7B">7B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="7C" />
                  <label for="7C">7C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="7D" />
                  <label for="7D">7D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="7E" />
                  <label for="7E">7E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="7F" />
                  <label for="7F">7F</label>
                </li>
              </ol>
            </li>
            <li class="row--8">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="8A" />
                  <label for="8A">8A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="8B" />
                  <label for="8B">8B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="8C" />
                  <label for="8C">8C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="8D" />
                  <label for="8D">8D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="8E" />
                  <label for="8E">8E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="8F" />
                  <label for="8F">8F</label>
                </li>
              </ol>
            </li>
            <li class="row--9">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="9A" />
                  <label for="9A">9A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="9B" />
                  <label for="9B">9B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="9C" />
                  <label for="9C">9C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="9D" />
                  <label for="9D">9D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="9E" />
                  <label for="9E">9E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="9F" />
                  <label for="9F">9F</label>
                </li>
              </ol>
            </li>
            <li class="row--10">
              <ol class="seats" type="A">
                <li class="seat">
                  <input type="checkbox" id="10A" />
                  <label for="10A">10A</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="10B" />
                  <label for="10B">10B</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="10C" />
                  <label for="10C">10C</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="10D" />
                  <label for="10D">10D</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="10E" />
                  <label for="10E">10E</label>
                </li>
                <li class="seat">
                  <input type="checkbox" id="10F" />
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

    <center><div class="col-md-5 order-md-2"><button class="btn btn-success btn-lg btn-block" type="submit">Reservar</button></div></center>

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
  </body>
  </html>

