
package model;

import bean.car_reservation;
import bean.usuarios;
import bean.reservaciones;
import carservices.ArrayOfCar;
import carservices.CarService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class model_services {
    /*PARTE LOCAL*/
    private String insertsql = "insert into Register_Usuario(IDUsuario, NombreCompleto, Telefono, Correo, FechaNac, Password) values(?, ?, ?, ?, ?, ?);";
    public boolean insertU(usuarios u) throws SQLException{
        boolean resultado = false;        
        
        Connection con = conexion.getConnection();
        PreparedStatement ps = con.prepareStatement(insertsql);
        ps.setInt(1, u.getCedula());
        ps.setString(2, u.getFullnombre());
        ps.setString(3, u.getTelefono());
        ps.setString(4, u.getCorreo());
        ps.setString(5, u.getFechanacimiento());
        ps.setString(6, u.getPassword());

        if (ps.executeUpdate() == 1) {
            resultado = true;
            ps.close();
            con.close();
        }
        
        return resultado;
    }
    
    public int sendEmail(usuarios u){
        String subject = "TicoBooking - Registro";
        String to = u.getCorreo();
        String link = "http://localhost:8080/Examen2_Sitio/register.jsp";
        String body = "<div style='background-color: #4caf50; padding:20px'>" +
                            "<div class='logo-right' align='right' id='emb-email-header'><img style = 'display: block;height: auto;width: 100%;border: 0;max-width: 227px;' src='https://i2.createsend1.com/ei/t/32/194/D85/123735/csfinal/logo1-9900000000028a3c.png' alt=''></div>" +
                            "<div style = 'mso-line-height-rule: exactly;mso-text-raise: 4px;'>" +
                                "<p class='size-40' style='Margin-top: 0;Margin-bottom: 20px;font-family: oswald,avenir next condensed,arial narrow,ms ui gothic,sans-serif;font-size: 32px;line-height: 40px;text-align: center;' lang='x-size-40'><span class='font-oswald'><strong><span style = 'color:#ffffff'> &#161;BIENVENIDO!</span></strong></span></p>" +
                            "</div>" +
                            "<div class='divider' style='display: block;font-size: 2px;line-height: 2px;Margin-left: auto;Margin-right: auto;width: 40px;background-color: #ccc;Margin-bottom: 20px;'>&nbsp;</div>" +
                            "<div style = 'Margin-left: 20px;Margin-right: 20px;' align='center'>" +
                                    "<img style = 'border: 0;display: block;height: auto;width: 100%;max-width: 128px;' alt='' width='128' src='https://i1.createsend1.com/ei/t/32/194/D85/122551/csfinal/web-9900000000028a3c.png'>" +
                            "</div>" +
                            "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                                    "<p class='size-22' style='Margin-top: 0;Margin-bottom: 0;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Hemos recibido una solicitud para un registro.</span></span></p><p class='size-22' style='Margin-top: 20px;Margin-bottom: 20px;font-family: montserrat,dejavu sans,verdana,sans-serif;font-size: 18px;line-height: 26px;text-align: center;' lang='x-size-22'><span class='font-montserrat'><span style = 'color:#ffffff' > Accede al siguiente link para continuar con el proceso</span></span></p>" +
                            "</div>" +
                            "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                            "</div>" +
                            "<div style = 'Margin-left: 20px;Margin-right: 20px;' >" +
                                    "<h2 style = 'Margin-top: 0;Margin-bottom: 16px;font-style: normal;font-weight: normal;color: #e31212;font-size: 26px;line-height: 34px;font-family: montserrat,dejavu sans,verdana,sans-serif;text-align: center;' ><span> <a style = 'color:#1a237e' href = "+link+">Registrarse</a> </ span ></ span ></ h2 >" +
                            "</ div >" +
                        "</ div > ";
        try{
            Properties props = new Properties();
            props.setProperty("mail.smtp.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", "progravcuc@gmail.com");
            props.setProperty("mail.smtp.auth", "true");
            
            Session session = Session.getDefaultInstance(props);

            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("progravcuc@gmail.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(body, "text/html");

            Transport t = session.getTransport("smtp");
            t.connect("progravcuc@gmail.com", "cursoCUC2019");
            t.sendMessage(message, message.getAllRecipients());

            t.close();
            
            return 0;
        }catch (Exception e){
            e.printStackTrace();
            return -1;
        }
    }
    
    /*PARTE WEB SERVICES*/ 
    
    public boolean insertReservations(reservaciones r, int id_hotel){
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
    
    public ArrayOfHotel selectHotels(){
        
        HotelGeneratorService WebService = new HotelGeneratorService();       
        
        return WebService.getBasicHttpBindingIHotelGeneratorService().selectHotels();
    }
    
    public ArrayOfHotel selectOneHotel(int id){
        
        HotelGeneratorService WebService = new HotelGeneratorService();       
        
        return WebService.getBasicHttpBindingIHotelGeneratorService().searchHotel(id);
    }
    
    //BANCO CENTRAL
    
    public String getCambioCompra(String fecha){
        
        HotelGeneratorService WebService = new HotelGeneratorService();       
        
        return WebService.getBasicHttpBindingIHotelGeneratorService().getTipoCambioCompra(fecha);
    }
    
    public String getCambioVenta(String fecha){
        
        HotelGeneratorService WebService = new HotelGeneratorService();       
        
        return WebService.getBasicHttpBindingIHotelGeneratorService().getTipoCambioVenta(fecha);
    }
    
         /////////////////////////////////////////////////////////////////////////////////////
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
}

