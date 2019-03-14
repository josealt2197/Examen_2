
package model;

import bean.usuarios;

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
    
    public ArrayOfHotel selectHotels(){
        
        HotelGeneratorService WebService = new HotelGeneratorService();       
        
        return WebService.getBasicHttpBindingIHotelGeneratorService().selectHotels();
    }
    
}

