
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

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link rel="icon" href="img/costa-rica64.png">

</head>


<body class="text-center">
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

  <div class="listado">

    <!-- Call to Action -->
    <section class="list-search text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <form>
          <div class="form-row ">
            <div class="col-md-6 mx-auto">
              <h1 class="mb-3" style="color:#4caf50;">Vehículos<span class="pl-2"><img src="img/costa-rica64.png"></span></h1>
              <h4>Realizar otra busqueda</h4><br>
              <input type="text" class="form-control form-control-lg" placeholder="¿Dónde necesitas el vehículo?">
            </div><br>
          </div>
          <div class="form-row mx-auto">
            <div class="col-md-4 mx-auto">
              <br><button type="submit" class="btn btn-block btn-lg btn-success">Buscar Vehículos</button>
            </div>
          </div>
        </form>
      </div>
    </section><br>

    <hr class="mb-4">

    <div class="row mb-2 ">
      <div class="col-md-8 mx-auto">
        <div class="card flex-md-row mb-4 box-shadow h-md-250">
          <div class="card-body d-flex flex-column align-items-start">
            <span class="badge badge-primary badge-pill">SUV</span>
            <h3 class="mb-0">
              <a class="text-dark" href="#">Ford Escape</a>
            </h3>
            <div class="mb-1"><i class="fas fa-map-marker-alt"> San José</i> </div>
            <div class="mb-1"><i class="fas fa-building"> Budget</i> </div>
            <p class="card-text mb-auto"> Precio x día: $393, Transmisión Automático, Hasta 8 Pasajeros, Kilometraje ilimitado, Aire Acondicionado, Propietario: Alamo, Restricciones: ninguna</p>
            <br><a class="btn btn-success" href="#">Leer más</a>
          </div>
          <img class="card-img-right flex-auto d-none d-md-block" width="275px" height="175px" src="img/escape.png" alt="Card image cap">
        </div>
      </div>
    </div>
  </div>

  <div class="row mb-2 ">
    <div class="col-md-8 mx-auto">
      <div class="card flex-md-row mb-4 box-shadow h-md-250">
        <div class="card-body d-flex flex-column align-items-start">
          <span class="badge badge-warning badge-pill">Compacto</span>
          <h3 class="mb-0">
            <a class="text-dark" href="#">Nissan Versa</a>
          </h3>
          <div class="mb-1"><i class="fas fa-map-marker-alt"> Alajuela</i> </div>
          <div class="mb-1"><i class="fas fa-map-marker-alt"> Alamo</i> </div>
            <p class="card-text mb-auto"> Precio x día: $393, Transmisión Automático, Hasta 8 Pasajeros, Kilometraje ilimitado, Aire Acondicionado, Propietario: Alamo, Restricciones: ninguna</p>
          <br><a class="btn btn-success" href="#">Leer más</a>
        </div>
        <img class="card-img-right flex-auto d-none d-md-block" width="275px" height="175px" src="img/versa.png" alt="Card image cap">
      </div>
    </div>
  </div>
</div>

<div class="row mb-2 ">
  <div class="col-md-8 mx-auto">
    <div class="card flex-md-row mb-4 box-shadow h-md-250">
      <div class="card-body d-flex flex-column align-items-start">
        <span class="badge badge-danger badge-pill">Económico</span>
        <h3 class="mb-0">
          <a class="text-dark" href="#">Toyota Yaris</a>
        </h3>
        <div class="mb-1"><i class="fas fa-map-marker-alt"> San José</i> </div>
            <p class="card-text mb-auto"> Precio x día: $393, Transmisión Automático, Hasta 8 Pasajeros, Kilometraje ilimitado, Aire Acondicionado, Propietario: Alamo, Restricciones: ninguna</p>
        <br><a class="btn btn-success" href="#">Leer más</a>
      </div>
      <img class="card-img-right flex-auto d-none d-md-block" width="275px" height="175px" src="img/yaris.png" alt="Card image cap">
    </div>
  </div>
</div>
</div>

<hr class="mb-4">

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


