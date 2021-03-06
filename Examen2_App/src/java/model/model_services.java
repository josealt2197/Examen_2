package model;

import bean.*;
import carservices.*;
import flightservices.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class model_services {

    //--------------------------------------------------PARTE LOCAL: REGISTRO DE USUARIOS------------------------------------------------------------------
    private String insertsql = "insert into Register_Usuario(IDUsuario, Nombre, Apellidos, Telefono, Correo, FechaNac, Password) values(?, ?, ?, ?, ?, ?, ?);";

    public boolean insertU(usuarios u) throws SQLException {
        boolean resultado = false;

        Connection con = conexion.getConnection();
        PreparedStatement ps = con.prepareStatement(insertsql);
        ps.setInt(1, u.getCedula());
        ps.setString(2, u.getNombre());
        ps.setString(3, u.getApellido());
        ps.setString(4, u.getTelefono());
        ps.setString(5, u.getCorreo());
        ps.setString(6, u.getFechanacimiento());
        ps.setString(7, u.getPassword());

        if (ps.executeUpdate() == 1) {
            resultado = true;
            ps.close();
            con.close();
        }

        return resultado;
    }

    //--------------------------------------------------CORREO ELECTRÓNICO - REGISTRO------------------------------------------------------------------    
    public int sendEmail(usuarios u) {
        String subject = "TicoBooking - Registro";
        String to = u.getCorreo();
        String link = "http://localhost:8080/Examen2_App/register.jsp";
        String body = "<div style='background-color: #4caf50; padding:20px'>"
                + "<div class='logo-right' align='right' id='emb-email-header'><img style = 'display: block;height: auto;width: 100%;border: 0;max-width: 227px;' src='https://i2.createsend1.com/ei/t/32/194/D85/123735/csfinal/logo1-9900000000028a3c.png' alt=''></div>"
                + "<div style = 'mso-line-height-rule: exactly;mso-text-raise: 4px;'>"
                + "<p class='size-40' style='Margin-top: 0;Margin-bottom: 20px;font-family: oswald,avenir next condensed,arial narrow,ms ui gothic,sans-serif;font-size: 32px;line-height: 40px;text-align: center;' lang='x-size-40'><span class='font-oswald'><strong><span style = 'color:#ffffff'> &#161;BIENVENIDO!</span></strong></span></p>"
                + "</div>"
                + "<div class='divider' style='display: block;font-size: 2px;line-height: 2px;Margin-left: auto;Margin-right: auto;width: 40px;background-color: #ccc;Margin-bottom: 20px;'>&nbsp;</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' align='center'>"
                + "<img style = 'border: 0;display: block;height: auto;width: 100%;max-width: 128px;' alt='' width='128' src='https://i1.createsend1.com/ei/t/32/194/D85/122551/csfinal/web-9900000000028a3c.png'>"
                + "</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' >"
                + "<p class='size-22' style='Margin-top: 0;Margin-bottom: 0;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Hemos recibido una solicitud para un registro.</span></span></p><p class='size-22' style='Margin-top: 20px;Margin-bottom: 20px;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Accede al siguiente link para continuar con el proceso</span></span></p>"
                + "</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' >"
                + "</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' >"
                + "<h2 style = 'Margin-top: 0;Margin-bottom: 16px;font-style: normal;font-weight: normal;color: #e31212;font-size: 26px;line-height: 34px;font-family: montserrat,dejavu sans,verdana,sans-serif;text-align: center;' ><span> <a style = 'color:#1a237e' href = " + link + ">Registrarse</a> </ span ></ span ></ h2 >"
                + "</ div >"
                + "</ div > ";
        try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "progravcuc@gmail.com");
            props.setProperty("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(props);

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("progravcuc@gmail.com", "TicoBooking"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(body, "text/html");

            Transport t = session.getTransport("smtp");
            t.connect("progravcuc@gmail.com", "cursoCUC2019");
            t.sendMessage(message, message.getAllRecipients());

            t.close();

            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
    //--------------------------------------------------CORREO ELECTRÓNICO - CAMBIO DE CONTRASEÑA------------------------------------------------------------------ 

    public int sendEmailPassword(usuarios u) {
        String subject = "TicoBooking - Cambio de Contraseña";
        String to = u.getCorreo();
        String link = "http://localhost:8080/Examen2_App/change_password_form.action?idU=" + u.getCedula();
        String body = "<div style='background-color: #4caf50; padding:20px'>"
                + "<div class='logo-right' align='right' id='emb-email-header'><img style = 'display: block;height: auto;width: 100%;border: 0;max-width: 227px;' src='https://i2.createsend1.com/ei/t/32/194/D85/123735/csfinal/logo1-9900000000028a3c.png' alt=''></div>"
                + "<div style = 'mso-line-height-rule: exactly;mso-text-raise: 4px;'>"
                + "<p class='size-40' style='Margin-top: 0;Margin-bottom: 20px;font-family: oswald,avenir next condensed,arial narrow,ms ui gothic,sans-serif;font-size: 32px;line-height: 40px;text-align: center;' lang='x-size-40'><span class='font-oswald'><strong><span style = 'color:#ffffff'> &#161;HOLA!</span></strong></span></p>"
                + "</div>"
                + "<div class='divider' style='display: block;font-size: 2px;line-height: 2px;Margin-left: auto;Margin-right: auto;width: 40px;background-color: #ccc;Margin-bottom: 20px;'>&nbsp;</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' align='center'>"
                + "<img style = 'border: 0;display: block;height: auto;width: 100%;max-width: 128px;' alt='' width='128' src='https://i1.createsend1.com/ei/t/32/194/D85/122551/csfinal/web-9900000000028a3c.png'>"
                + "</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' >"
                + "<p class='size-22' style='Margin-top: 0;Margin-bottom: 0;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Hemos recibido una solicitud para restablecer tu contraseña.</span></span></p><p class='size-22' style='Margin-top: 20px;Margin-bottom: 20px;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Accede al siguiente link para continuar con el proceso</span></span></p>"
                + "</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' >"
                + "</div>"
                + "<div style = 'Margin-left: 20px;Margin-right: 20px;' >"
                + "<h2 style = 'Margin-top: 0;Margin-bottom: 16px;font-style: normal;font-weight: normal;color: #e31212;font-size: 26px;line-height: 34px;font-family: montserrat,dejavu sans,verdana,sans-serif;text-align: center;' ><span> <a style = 'color:#1a237e' href = " + link + ">Cambiar Contraseña</a> </ span ></ span ></ h2 >"
                + "</ div >"
                + "</ div > ";
        try {
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "progravcuc@gmail.com");
            props.setProperty("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(props);

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("progravcuc@gmail.com", "TicoBooking"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(body, "text/html");

            Transport t = session.getTransport("smtp");
            t.connect("progravcuc@gmail.com", "cursoCUC2019");
            t.sendMessage(message, message.getAllRecipients());

            t.close();

            return 0;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

//--------------------------------------------------ACTUALIZAR CONTRASEÑA------------------------------------------------------------------ 
    private String updatesql = "UPDATE Register_Usuario SET Password = ? WHERE IDUsuario = ?;";

    public boolean updateU(usuarios u, int id) throws SQLException {
        boolean resultado = false;
        Connection con = conexion.getConnection();
        PreparedStatement ps = con.prepareStatement(updatesql);
        ps.setString(1, u.getPassword());
        ps.setInt(2, id);

        if (ps.executeUpdate() == 1) {
            resultado = true;
            ps.close();
            con.close();
        }

        return resultado;
    }

    //--------------------------------------------------LOGIN------------------------------------------------------------------           
    private String sql1 = "SELECT Correo, Password FROM Register_Usuario WHERE Correo = ?;";

    public String consulta_inicio(usuarios u) throws SQLException {
        String result = "";
        String mail = "";
        String pass = "";
        Connection con = conexion.getConnection();
        PreparedStatement ps = con.prepareStatement(sql1);
        ps.setString(1, u.getCorreo());

        ResultSet res = ps.executeQuery();

        while (res.next()) {
            mail = res.getString(1);
            pass = res.getString(2);
        }

        if (u.getPassword().equals(pass) && u.getCorreo().equals(mail)) {
            result = "correcto";
        } else {
            result = "incorrecto";
        }

        ps.close();
        res.close();
        con.close();

        return result;
    }

    private String sql2 = "SELECT IDUsuario, Nombre, Apellidos, Telefono, Correo FROM Register_Usuario WHERE Correo = ?;";

    public String consulta_session(usuarios u) throws SQLException {
        Connection con = conexion.getConnection();
        PreparedStatement ps = con.prepareStatement(sql2);
        ps.setString(1, u.getCorreo());

        ResultSet res = ps.executeQuery();

        while (res.next()) {
            u.setCedula(res.getInt(1));
            u.setNombre(res.getString(2));
            u.setApellido(res.getString(3));
            u.setTelefono(res.getString(4));
            u.setCorreo(res.getString(5));
        }

        return "exito";
    }

    //--------------------------------------------------ALOJAMIENTO------------------------------------------------------------------
    public boolean insertReservations(reservaciones r) {
        boolean resultado = false;

        int id_hospedaje = r.getId_hospedaje();
        int id_cliente = r.getId_cliente();
        String nombre = r.getNombre();
        String apellido = r.getApellido();
        String telefono = r.getTelefono();
        String correo = r.getCorreo();
        String entrada = r.getEntrada();
        String salida = r.getSalida();
        int cantidad = r.getCantidad();
        int costo = r.getCosto();

        HotelGeneratorService WebService = new HotelGeneratorService();

        WebService.getBasicHttpBindingIHotelGeneratorService().insertReservation(id_hospedaje, id_cliente, nombre, apellido, telefono, correo, entrada, salida, cantidad, costo);

        return resultado;
    }

    public ArrayOfHotel selectHotels() {

        HotelGeneratorService WebService = new HotelGeneratorService();

        return WebService.getBasicHttpBindingIHotelGeneratorService().selectHotels();
    }

    public ArrayOfHotel selectOneHotel(int id) {

        HotelGeneratorService WebService = new HotelGeneratorService();

        return WebService.getBasicHttpBindingIHotelGeneratorService().searchHotel(id);
    }

    //--------------------------------------------------TIPO DE CAMBIO------------------------------------------------------------------
    //BANCO CENTRAL
    public String getCambioCompra(String fecha) {

        HotelGeneratorService WebService = new HotelGeneratorService();

        return WebService.getBasicHttpBindingIHotelGeneratorService().getTipoCambioCompra(fecha);
    }

    public String getCambioVenta(String fecha) {

        HotelGeneratorService WebService = new HotelGeneratorService();

        return WebService.getBasicHttpBindingIHotelGeneratorService().getTipoCambioVenta(fecha);
    }

    //--------------------------------------------------VEHICULOS------------------------------------------------------------------
    public boolean insertCarReservations(car_reservation cr) {
        boolean resultado = false;

        int idVehiculo = cr.getId_vehiculo();
        int idCliente = cr.getId_cliente();
        String nombre = cr.getNombre();
        String apellidos = cr.getApellido();
        String telefono = cr.getTelefono();
        String correo = cr.getCorreo();
        String hentrada = cr.getHentrada();
        String hsalida = cr.getHsalida();
        String fentrada = cr.getFentrada();
        String fsalida = cr.getFsalida();
        String lugar = cr.getLugar();

        CarService WebService = new CarService();

        WebService.getBasicHttpBindingICarService().insertCarReservation(idVehiculo, idCliente, nombre, apellidos, telefono, correo, hentrada, hsalida, fentrada, fsalida, lugar);

        return resultado;
    }

    public ArrayOfCar selectCars() {

        CarService WebService = new CarService();

        return WebService.getBasicHttpBindingICarService().selectCar();
    }

    public ArrayOfCar selectOneCar(int id) {

        CarService WebService = new CarService();

        return WebService.getBasicHttpBindingICarService().searchCar(id);
    }

    //--------------------------------------------------VUELOS------------------------------------------------------------------ 
    public boolean insertFlightReservations(flight_reservation fr) {
        boolean resultado = false;

        int idVuelo = fr.getId_vuelo();
        int idCliente = fr.getId_cliente();
        String nombre = fr.getNombre();
        String apellidos = fr.getApellido();
        String telefono = fr.getTelefono();
        String correo = fr.getCorreo();
        int cantpasajeros = fr.getCantpasajeros();
        String asientos = fr.getAsientos();
        String clase = fr.getClase();
        float costo = fr.getCosto();
        float costototal = costo * cantpasajeros;

        FlightService WebService = new FlightService();

        WebService.getBasicHttpBindingIFlightService().insertFlightReservation(idVuelo, idCliente, nombre, apellidos, telefono, correo, cantpasajeros, asientos, costototal, clase);

        return resultado;
    }

    public ArrayOfFlight selectFlights() {

        FlightService WebService = new FlightService();

        return WebService.getBasicHttpBindingIFlightService().selectFlight();
    }

    public ArrayOfFlight selectOneFlight(int id) {

        FlightService WebService = new FlightService();

        return WebService.getBasicHttpBindingIFlightService().searchFlight(id);
    }
}
