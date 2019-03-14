package bean;

import java.io.Serializable;


public class usuarios implements Serializable {
    
    public int cedula;
    public String fullnombre;
    public String correo;
    public String telefono;
    public String fechanacimiento;
    public String password;

    public usuarios() {
    }

    public usuarios(int cedula, String correo, String password) {
        this.cedula = cedula;
        this.correo = correo;
        this.password = password;
    }

    public usuarios(int cedula, String fullnombre, String correo, String telefono, String fechanacimiento, String password) {
        this.cedula = cedula;
        this.fullnombre = fullnombre;
        this.correo = correo;
        this.telefono = telefono;
        this.fechanacimiento = fechanacimiento;
        this.password = password;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullnombre() {
        return fullnombre;
    }

    public void setFullnombre(String fullnombre) {
        this.fullnombre = fullnombre;
    }    
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFechanacimiento() {
        return fechanacimiento;
    }

    public void setFechanacimiento(String fechanacimiento) {
        this.fechanacimiento = fechanacimiento;
    }
    
}
