<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>  
<%@ page import = "controller.*" %>

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
        
        <div class="listado">
            
            <!-- Call to Action -->
            <section class="list-search text-white text-center">
                <div class="overlay"></div>
                <div class="container">
                    <div class="form-row ">
                        <div class="col-md-6 mx-auto">
                            <h2>Tipo de Cambio <span class="pl-2"><img src="img/costa-rica64.png"></span></h2>                                                  
                        </div><br>
                    </div>
                </div>
            </section><br>
            
            <hr class="mb-4">
            
            <center><div class="mx-auto">
                    <div class="convertor-card">
                        <div class="base">
                            <span class="name">Compra</span>
                            <div class="value-section">
                                <span class="symbol">₡</span>
                                <span class="value"><%= controller_cambio.getCambioCompra() %></span>                            
                            </div>
                            <span class="abbr">Banco</span>
                        </div>
                        <div class="converted">
                            <span class="name">Venta</span>
                            <div class="value-section">
                                <span class="symbol">₡</span>
                                <span class="value"><%= controller_cambio.getCambioVenta() %></span>                            
                            </div>
                            <span class="abbr">Central</span>
                        </div>
                    </div>
                </div></center>
            
            <hr class="mb-4">                   
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


