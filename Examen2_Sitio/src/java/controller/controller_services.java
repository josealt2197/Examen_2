
package controller;

import bean.hotels;
import bean.usuarios;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.ArrayList;
import java.util.List;
import model.Hotel;
import model.model_services;


public class controller_services {
    
    //----------------Insert de Usuarios
    private usuarios u = new usuarios();

    public usuarios getU() {
        return u;
    }

    public void setU(usuarios u) {
        this.u = u;
    }
    
    public String insertUsuario(){
        model_services da = new model_services();
        da.insertU(getU());

        return SUCCESS;
    }
    
    //----------------Select de Hoteles
    private hotels h = new hotels();
    
    private List<Hotel> hotels_list = new ArrayList<>();

    public List<Hotel> getHotels_list() {
        return hotels_list;
    }

    public void setHotels_list(List<Hotel> hotels_list) {
        this.hotels_list = hotels_list;
    }   

    public hotels getH() {
        return h;
    }

    public void setH(hotels h) {
        this.h = h;
    }
    
    public String selectHoteles(){
        model_services da = new model_services();
        hotels_list = da.selectHotels().getHotel();
        
        return SUCCESS;
    }
}
