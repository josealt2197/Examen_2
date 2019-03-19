
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import model.model_services;

public class controller_cambio extends ActionSupport {
    //----------------Get tipo de cambio
    private static String fecha, result;
    
    java.util.Date date = new java.util.Date();  
    
    public static String getCambioCompra(){
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
        fecha = dateFormat.format(date); 
        model_services da = new model_services();                
        result = da.getCambioCompra(fecha);
        return result;
    }
    
    public static String getCambioVenta(){  
        Date date = Calendar.getInstance().getTime();  
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
        fecha = dateFormat.format(date);  
        model_services da = new model_services();                
        result = da.getCambioVenta(fecha);
        return result;
    }
}

