<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>  

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
                                <h4>Realizar otra busqueda</h4>
                                <select class="form-control form-control-lg" >
                                    <option>¿Qué andas buscando?</option>
                                    <option>Hospedaje</option>
                                    <option>Vehículos</option>
                                </select><br>
                                <input type="text" class="form-control form-control-lg" placeholder="¿Donde lo necesitas?">
                            </div><br>
                        </div>
                        <div class="form-row mx-auto">
                            <div class="col-md-2 mx-auto">
                                <br><button type="submit" class="btn btn-block btn-lg btn-success">Buscar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </section><br>

            <hr class="mb-4">

            <!--A PARTIR DE AQUI-->
            <s:iterator  value="hotels_list"> 
                <div class="row mb-2 ">
                    <div class="col-md-8 mx-auto">
                        <div class="card flex-md-row mb-4 box-shadow h-md-250">
                            <div class="card-body d-flex flex-column align-items-start">
                                <span class="badge badge-primary badge-pill"  style="margin-bottom: 18px;"><s:property value="Tipo.getValue()"></s:property></span>
                                    <h3 class="mb-0">
                                        <a class="text-dark" href="#"><s:property value="NombreHos.getValue()"></s:property></a>
                                    </h3>
                                    <div class="mb-1">
                                        <i class="pr-4 fas fa-map-marker-alt" style="color: #4caf50; margin-top: 15px;"> <s:property value="ProvinciaHos.getValue()"></s:property></i>                                        
                                    <i class="pr-4 fas fa-users" style="color: #4caf50; margin-top: 15px;"> <s:property value="CantidadHuespedes"></s:property></i>
                                    <i class="fas fa-money-bill" style="color: #4caf50; margin-top: 15px;"> ₡ <s:property value="Precio"></s:property></i>
                                    </div>                      
                                    <p class="card-text mb-auto" style="margin-top: 15px;"><s:property value="DescripcionHos.getValue()"></s:property></p>
                                    <br><a class="btn btn-success" href="place_detail.action?id=<s:property value="id"></s:property>">Leer más</a>
                                </div>
                                <img class="card-img-right flex-auto d-none d-md-block" width="290px" height="275px" style="padding-top: 25px;" src="<s:property value="ImagenHos.getValue()"></s:property>" alt="Card image cap">
                            </div>
                        </div>
                    </div>
                </div>
        </s:iterator>  
        <!--HASTA AQUI-->

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


