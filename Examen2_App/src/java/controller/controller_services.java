package controller;

import bean.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import model.Hotel;
import model.model_services;

public class controller_services extends ActionSupport {
    //----------------Insert de Usuarios

    private usuarios u = new usuarios();

    public usuarios getU() {
        return u;
    }

    public void setU(usuarios u) {
        this.u = u;
    }

    public String insertUsuario() {
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

    private List<Hotel> hotel_info = new ArrayList<>();

    public List<Hotel> getHotel_info() {
        return hotel_info;
    }

    public void setHotel_info(List<Hotel> hotel_info) {
        this.hotel_info = hotel_info;
    }

    model_services de = new model_services();
    String submitType;

    public String insertReservacion() throws Exception {

        try {
            if(submitType.equals("load")){
                hotel_info = de.selectOneHotel(id_hotel).getHotel();
            }else{
                de.insertReservations(getR());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }

    public String getSubmitType() {
        return submitType;
    }

    public void setSubmitType(String submitType) {
        this.submitType = submitType;
    }

    /*public String insertReservacion(){
        boolean result; 
        model_services da = new model_services();
        result=da.insertReservations(getR(), id_hotel);
        
        if(result==false){
           return SUCCESS;
        }else{
           return INPUT;
        }
    }*/
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

    public String selectHoteles() {
        model_services da = new model_services();
        hotels_list = da.selectHotels().getHotel();

        return SUCCESS;
    }

    //----------------Select de un Hotel
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String selectUnHotel() {
        model_services da = new model_services();
        hotel_info = da.selectOneHotel(id).getHotel();
        return SUCCESS;
    }
}
