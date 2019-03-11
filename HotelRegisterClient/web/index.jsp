<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register Client</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <center><div><h1>REGISTRO</h1></div></center>
        <center><form action="Main.java" method="POST">
                <h3>Cedula</h3>
                <input type="text" name="cedula">
                <h3>Nombre</h3>
                <input type="text" name="nombre">
                <h3>Apellidos</h3>
                <input type="text" name="apellido">
                <h3>Correo</h3>
                <input type="text" name="correo">
                <h3>Celular</h3>
                <input type="text" name="celular">
                
                <br><input type="submit" value="Submit">
        </form></center>
    </body>
</html>
