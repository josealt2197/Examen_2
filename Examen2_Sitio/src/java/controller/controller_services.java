package controller;

import bean.car_reservation;
import bean.hotels;
import bean.reservaciones;
import bean.usuarios;
import carservices.*;
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
    
        //----------------Insert de Reservaciones Vehiculos
    private int id_vehiculo;

    public int getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(int id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }

    private car_reservation cr = new car_reservation();

    public car_reservation getCr() {
        return cr;
    }

    public void setCr(car_reservation cr) {
        this.cr = cr;
    }
    
    String submitType;
    
    private List<Car> car_info = new ArrayList<>();

    public List<Car> getCar_info() {
        return car_info;
    }

    public void setCar_info(List<Car> car_info) {
        this.car_info = car_info;
    }
    
    public String getSubmitType() {
        return submitType;
    }

    public void setSubmitType(String submitType) {
        this.submitType = submitType;
    }
        
    public String insertCarReservacion() {  

        try {
            if (submitType.equals("updatedata")) {
                model_services de = new model_services();
                car_info = de.selectOneCar(id_vehiculo).getCar();
            } else {
                model_services da = new model_services();
                da.insertCarReservations(getCr(), id_vehiculo);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }

    //----------------Select de Vehiculos
    private Car c = new Car();

    public Car getC() {
        return c;
    }

    public void setC(Car c) {
        this.c = c;
    }

    private List<Car> car_list = new ArrayList<>();

    public List<Car> getCar_list() {
        return car_list;
    }

    public void setCar_list(List<Car> car_list) {
        this.car_list = car_list;
    }

    public String selectCars() {
        model_services dg = new model_services();
        car_list = dg.selectCars().getCar();

        return SUCCESS;
    }

    //----------------Select de un Vehiculo
    private int idVehiculo;

    public int getIdVehiculo() {
        return idVehiculo;
    }

    public void setIdVehiculo(int idVehiculo) {
        this.idVehiculo = idVehiculo;
    }

    public String selectCar() {
        model_services de = new model_services();
        car_info = de.selectOneCar(idVehiculo).getCar();
        return SUCCESS;
    }
}


