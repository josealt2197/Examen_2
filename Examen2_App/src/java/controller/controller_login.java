package controller;

import bean.usuarios;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.model_services;

import org.apache.struts2.interceptor.SessionAware;

public class controller_login extends ActionSupport implements SessionAware {
    
    private usuarios u = new usuarios();
    private Map session;
    
    public void setSession(Map session) {
        this.session = session;
    }
    
    public controller_login() {
    }
    
    @Override
    public String execute() throws SQLException{
        model_services da = new model_services();
        String result = "";
        
        if("sinregistro".equals(da.consulta_inicio(getU()))){
            result = "sinregistro";
            addFieldError("u.Correo", "No existe esa cuenta con esas crendenciales. Registrate para continuar.");
        }else if("incorrecto".equals(da.consulta_inicio(getU()))){
            result = "incorrecto";
            addFieldError("u.Correo", "Alguna de sus credenciales no son correctas. Intente de nuevo.");
        }else if("correcto".equals(da.consulta_inicio(getU()))){
            result = "correcto";
            session.put("session_correo", u.getCorreo()); 
            da.consulta_session(getU());
            session.put("session_cedula", u.getCedula());
            session.put("session_nombre", u.getNombre());
            session.put("session_apellido", u.getApellido());
            session.put("session_telefono", u.getTelefono());
        }
        
        return result;
    }
    
    public usuarios getU() {
        return u;
    }
    
    public void setU(usuarios u) {
        this.u = u;
    }
    
    
}
