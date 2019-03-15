package controller;

import bean.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import model.Hotel;
import model.model_services;

public class controller_services extends ActionSupport{
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
    
    //----------------Insert de Reservaciones
    private int id_hotel;
    
    private reservaciones r = new reservaciones();

    public reservaciones getR() {
        return r;
    }

    public void setR(reservaciones r) {
        this.r = r;
    }   

    public int getId_hotel() {
        return id_hotel;
    }

    public void setId_hotel(int id_hotel) {
        this.id_hotel = id_hotel;
    }   
    
    public String insertReservacion(){
        model_services da = new model_services();
        da.insertReservations(getR(), id_hotel);

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
    
    //----------------Select de un Hotel
   private int id;
    
    private List<Hotel> hotel_info = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Hotel> getHotel_info() {
        return hotel_info;
    }

    public void setHotel_info(List<Hotel> hotel_info) {
        this.hotel_info = hotel_info;
    }
        
    public String selectUnHotel(){        
        model_services da = new model_services();
        hotel_info = da.selectOneHotel(id).getHotel();        
        return SUCCESS;
    }
}
