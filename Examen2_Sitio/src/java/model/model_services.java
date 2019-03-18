
package model;

import bean.car_reservation;
import bean.usuarios;
import bean.reservaciones;
import carservices.ArrayOfCar;
import carservices.CarService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static model.conexion.getConnection;

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

