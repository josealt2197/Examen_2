package model;

import bean.usuarios;
import bean.reservaciones;

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
    
    public boolean insertReservations(reservaciones r, int id_hotel){
        boolean resultado = false;        
        
        int id_hospedaje = id_hotel;
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
}