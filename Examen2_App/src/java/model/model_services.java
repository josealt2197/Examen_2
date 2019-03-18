package model;

import bean.car_reservation;
import bean.usuarios;
import bean.reservaciones;
import carservices.*;

public class model_services {
        public boolean insertU(usuarios u){
        boolean resultado = false;        
        
        int id = u.getCedula();
        String fullname = u.getFullnombre();
        String phone = u.getTelefono();
        String mail = u.getCorreo();
        String date = u.getFechanacimiento();
        String password = u.getPassword();

        HotelGeneratorService WebService = new HotelGeneratorService();        
        
        WebService.getBasicHttpBindingIHotelGeneratorService().insertClient(id, fullname, mail, phone, date, password);
        
        return resultado;
    }
    
    public boolean insertReservations(reservaciones r){
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
