
package bean;

public class car_reservation {
    
    private int id_vehiculo;
    private int id_cliente;
    private String nombre;
    private String apellido;
    private String telefono;
    private String correo;
    private String fentrada;
    private String fsalida;
    private String hentrada;
    private String hsalida;
    private String lugar;

    public car_reservation() {
    }

    public car_reservation(int id_vehiculo, int id_cliente, String nombre, String apellido, String telefono, String correo, String fentrada, String fsalida, String hentrada, String hsalida, String lugar) {
        this.id_vehiculo = id_vehiculo;
        this.id_cliente = id_cliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
        this.fentrada = fentrada;
        this.fsalida = fsalida;
        this.hentrada = hentrada;
        this.hsalida = hsalida;
        this.lugar = lugar;
    }

    public int getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(int id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getFentrada() {
        return fentrada;
    }

    public void setFentrada(String fentrada) {
        this.fentrada = fentrada;
    }

    public String getFsalida() {
        return fsalida;
    }

    public void setFsalida(String fsalida) {
        this.fsalida = fsalida;
    }

    public String getHentrada() {
        return hentrada;
    }

    public void setHentrada(String hentrada) {
        this.hentrada = hentrada;
    }

    public String getHsalida() {
        return hsalida;
    }

    public void setHsalida(String hsalida) {
        this.hsalida = hsalida;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }
    
    
    
}
