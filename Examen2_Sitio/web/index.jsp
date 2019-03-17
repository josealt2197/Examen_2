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

<body>

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




  <!-- Masthead -->
  <header class="masthead text-white text-center">
    <div class="col-xl-10 mx-auto">
      <h1 class="mb-3" style="color:#4caf50;">¿Quieres explorar Costa Rica?<span class="pl-2"><img src="img/costa-rica64.png"></span></h1>
      <h2 class="mb-3">Tenemos lo que necesitas.</h2>
    </div>
    <center><div class="col-md-8">

      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Hospedaje</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Vehículos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Vuelos</a>
        </li>
      </ul>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

          <div class="col-md-10 mx-auto">
            <center>
              <form>
                <div class="form-row">
                  <div class="col-md-12">
                    <input type="text" class="form-control form-control-lg" placeholder="¿Dónde quieres hospedarte?">
                  </div><br>
                  <div class="col-md-4 mx-auto"><br>
                    <a href="viewrecords" rel="external" type="submit" class="btn btn-block btn-lg btn-success">Buscar Hoteles</a>
                  </div>
                </div>
              </form>
            </center>
          </div>

        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

          <div class="col-md-10 mx-auto">
            <center>
              <form>
                <div class="form-row">
                  <div class="col-md-12">
                    <input type="text" class="form-control form-control-lg" placeholder="¿Dónde necesitas el vehículo?">
                  </div><br>
                  <div class="col-md-4 mx-auto"><br>
                    <a href="viewcar_list" rel="external" type="submit" class="btn btn-block btn-lg btn-success">Buscar Vehículos</a>
                  </div>
                </div>
              </form>
            </center>
          </div>
        </div>

        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

          <div class="col-md-10 mx-auto">
            <center>
              <form>
                <div class="form-row">
                  <div class="col-md-12">
                    <input type="text" class="form-control form-control-lg" placeholder="¿A dónde te gustaría ir?"><br>
                    <select class="form-control form-control-lg" >
                      <option>¿Qué clase necesitas?</option>
                      <option>Economica</option>
                      <option>Economica Superior</option>
                      <option>Business</option>
                      <option>Primera</option>
                    </select><br>
                    <div class="radio">
                      <h4><input type="radio" name="optradio" checked>Solo ida</h4>
                      <h4><input type="radio" name="optradio" disabled>Ida - Vuelta</h4>
                    </div> 
                  </div>             
                  <div class="col-md-4 mx-auto">
                    <br><button type="submit" class="btn btn-block btn-lg btn-success">Buscar Vuelos</button>
                  </div>
                </div>
              </form>
            </center>
          </div>

        </div>
      </div>

    </div></center>
  </header>

  <!-- Icons Grid -->
  <section class="features-icons bg-light text-center">
    <div class="container">
      <h2>TicoBooking, los expertos en resevaciones.</h2><br>
      <div class="row">
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="icon-screen-smartphone m-auto text-success"></i>
            </div>
            <p class="lead mb-0">Ofrecemos nuestro servicio de reservacion en tiempo real por medio de nuestro sitio Web o a traves de nuestra App Movil.</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="icon-book-open m-auto text-success"></i>
            </div>
            <p class="lead mb-0">Contamos con un amplio catalogo de opciones, de acuerdo a las necesidades de nuestros clientes.</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="icon-check m-auto text-success"></i>
            </div>
            <p class="lead mb-0">Poseemos los mas altos estandares de seguridad, para poder brindar la mejor experiencia.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Image Showcases -->
  <section class="showcase">
    <div class="container-fluid p-0">
      <div class="row no-gutters">

        <div class="col-lg-6 order-lg-2 text-white showcase-img" style="background-image: url('img/bg-showcase-1.jpg');"></div>
        <div class="col-lg-6 order-lg-1 my-auto showcase-text">
          <h3>¿Necesitas donde hospedarte?</h3>
          <p class="lead mb-0">Con nosotros estás en buenas manos: Tenemos opciones de hoteles para todos los gustos, con los mejores precios y en todo el país.</p>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-6 text-white showcase-img" style="background-image: url('img/bg-showcase-2.jpg');"></div>
        <div class="col-lg-6 my-auto showcase-text">
          <h2>¿Necesitas transporte?</h2>
          <p class="lead mb-0">Nosotros te ayudamos. Te ofrecemos distintos vehículos, para que puedas conocer todas las provincias y llegar a tu destino esperado.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="testimonials text-center bg-light">
    <div class="container">
      <h2 class="mb-5">Qué dicen nuestros clientes...</h2>
      <div class="row">
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-1.jpg" alt="">
            <h5>Margaret E.</h5>
            <p class="font-weight-light mb-0">"TicoBooking ofrece las mejores ofertas."</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-2.jpg" alt="">
            <h5>Fred S.</h5>
            <p class="font-weight-light mb-0">"¡Excelente servicio! Recomendado para extrajeros y locales."</p>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="testimonial-item mx-auto mb-5 mb-lg-0">
            <img class="img-fluid rounded-circle mb-3" src="img/testimonials-3.jpg" alt="">
            <h5>Sarah W.</h5>
            <p class="font-weight-light mb-0">"Cuando pienso en planear mis vacaciones, pienso en TicoBooking"</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Call to Action -->
  <section class="call-to-action text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-12 mx-auto">
          <h2 class="mb-4">¿Necesitas ayuda?</h2>
          <h3>Visita nuestra seccion de preguntas frecuentes.</h3>          
        </div>
        <div class="col-xl-2 mx-auto"><br><br><button type="submit" class="btn btn-block btn-lg btn-success">Ayuda</button>
        </div>
      </div>
    </div>
  </section>

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


