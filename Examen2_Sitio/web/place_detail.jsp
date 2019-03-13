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
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hospedaje</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Vehículos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ayuda</a>
                    </li>
                </ul>
                <form class="form-inline mt-2 mt-md-0">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="login.jsp">Ingresar</a>
                        </li>
                    </ul>
                </form>
            </div>
        </nav>

        <div class="container">
            <div class="jumbotron p-4 p-md-4 text-white rounded">
                <div class="col-md-6 px-0">
                    <h1 class="display-4 font-italic">Ubicación-Mapa</h1>
                    <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
                </div>
            </div>

            <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
                <div class="row">
                    <div class="col-md-6 mr-5 px-0">
                        <h1 class="display-5 font-italic">Park Inn San Jose by Radisson</h1>
                        <span class="badge badge-primary badge-pill">Hotel</span><span class="ml-3 badge badge-info">Ideal para dos viajeros</span>
                        <p class="lead my-3">Calle Central y Tercera Av 15, Barrio Tournon, 00001 San José, Costa Rica.</p>
                    </div>
                    <div class="col-md-3">
                        <button class="btn btn-success btn-lg btn-block" type="submit">Reservar</button>
                    </div>
                </div>
                <img src="https://q-ec.bstatic.com/images/hotel/max1280x900/161/161776615.jpg" data-highres="https://q-ec.bstatic.com/images/hotel/max1280x900/161/161776615.jpg" alt="Imagen de la galería de este alojamiento" width="800px" height="300px">
            </div>

            <div class="row">
                <div class="col-md-8 blog-main">
                    <h3 class="pb-4 mb-4 font-italic border-bottom">
                        ¿Qué te ofrecemos?
                    </h3>
                    <div class="blog-post">

                        <p>Este hotel elegante alberga piscina al aire libre, piscina cubierta climatizada y centro de conferencias. Sus habitaciones son amplias e incluyen conexión WiFi gratuita y soporte para iPod.</p>

                        <p>El Radisson Hotel San Jose Costa Rica se encuentra en el centro de San José, a 800 metros de la avenida central. Dispone de parking seguro gratuito 24 horas.</p>

                        <p>El Radisson Hotel San Jose cuenta con sauna, bañera de hidromasaje, gimnasio bien equipado y servicio de masajes, bajo petición.</p>

                        <p>Las habitaciones son grandes y presentan una decoración de estilo clásico con muebles sofisticados de madera tallada. Todas tienen minibar, cafetera y baño elegante con artículos de aseo y secador de pelo.</p>

                        <p>El restaurante Acuarelas del Radisson sirve platos de cocina local e internacional, mientras que el Café Tropical ofrece un desayuno buffet variado. El centro de fitness Gold's Gym, así como el servicio de habitaciones y el de atención médica están disponibles las 24 horas.</p>

                        <p>¡Hablamos tu idioma!</p>
                        <hr>

                    </div>

                </div>

                <aside class="col-md-4 blog-sidebar">
                    <div class="p-4 mb-3 bg-light rounded">
                        <h4 class="font-italic">Servicios incluidos</h4>
                        <p class="mb-0">Piscina</p>
                        <p class="mb-0">Traslado</p>
                        <p class="mb-0">Aeropuerto</p>
                        <p class="mb-0">Centro de fitness bueno</p>
                        <p class="mb-0">Habitaciones para no fumadores</p>
                        <p class="mb-0">Parking gratis</p>
                        <p class="mb-0">Restaurante</p>
                        <p class="mb-0">Bar</p>
                        <p class="mb-0">Muy buen desayuno</p>		               
                    </div>
                </aside>

            </div>

            <div class="my-3 p-3 bg-white rounded shadow-sm mb-4">
                <h4 class="border-bottom border-gray pb-2 mb-0">Reseñas</h4>
                <div class="media text-muted pt-3">
                    <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"></rect><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
                    <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                        <strong class="d-block text-gray-dark">Laura</strong>
                        “La ubicacion es EXCELENTE”
                    </p>
                    <span class="badge badge-success p-3">10</span>
                </div>
                <div class="media text-muted pt-3">
                    <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#e83e8c"></rect><text x="50%" y="50%" fill="#e83e8c" dy=".3em">32x32</text></svg>
                    <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                        <strong class="d-block text-gray-dark">Marc</strong>
                        "Estuvimos en otra ocasión durante el viaje a Costa Rica y fue igual que la primera vez: simplemente perfecto. No os va a defraudar.”
                    </p>
                    <span class="badge badge-success p-3">10</span>

                </div>
                <div class="media text-muted pt-3">
                    <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
                    <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                        <strong class="d-block text-gray-dark">Franchesca</strong>
                        “La ubicación es excelente .Muy buen room service este se encuentra disponible 24/7 la comida excelente también."
                    </p>
                    <span class="badge badge-success p-3">10</span>

                </div>
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