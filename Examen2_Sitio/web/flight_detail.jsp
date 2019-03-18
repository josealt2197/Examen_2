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
                  <a class="nav-link" href="login.jsp">Ingresar</a>
                </li>
              </ul>
            </form>
          </div>
        </nav>

	<div class="container">
		<div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
			<div class="row">
				<div class="col-md-8 mr-5 px-0">
					<h1 class="display-5 font-italic">Vuelo: American Airlines 1204</h1>
					<span class="badge badge-primary badge-pill">Internacional</span><span class="ml-3 badge badge-info">Oferta del Mes</span>
				</div>
				<div class="col-md-3">
					<button class="btn btn-success btn-lg btn-block" type="submit">Reservar</button>
				</div>
			</div>	
		</div>

		<div class="row">
			<div class="col-md-6 blog-main">
				<h3 class="pb-4 mb-4 font-italic border-bottom">
					Detalles Generales del Vuelo
				</h3>
				<div class="blog-post">

					<p><strong>Fecha del Vuelo:</strong> jue 25 abr</p>
					<p><strong>Hora de Salida:</strong> 6:48</p>
					<p><strong>Hora de Llegada:</strong> 11:50</p>
					<p><strong>Modalidad:</strong> Directo</p>
					<p><strong>Aeronave:</strong> Boeing 737-800</p>

					<hr>
				</div>
			</div>

			<aside class="col-md-6 blog-sidebar">
				<br><br><br>
				<div class="p-4 mb-3 bg-light rounded">
					<p><strong>Origen:</strong> San José, Costa Rica (SJO) </p>
					<p><strong>Destino:</strong> Miami, Florida, EU (MIA) </p>
					<p><strong>Duración:</strong> 3h 02min</p>		               
				</div>
			</aside>

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

