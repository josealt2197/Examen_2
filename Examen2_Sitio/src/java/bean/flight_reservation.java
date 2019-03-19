
package bean;

public class flight_reservation {
        
    private int id_vuelo;
    private int id_cliente;
    private String nombre;
    private String apellido;
    private String telefono;
    private String correo;
    private int cantpasajeros;
    private String asientos;
    private float costo;

    public flight_reservation() {
    }

    public flight_reservation(int id_vehiculo, int id_cliente, String nombre, String apellido, String telefono, String correo, int cantpasajeros, String asientos, float costo) {
        this.id_vuelo = id_vehiculo;
        this.id_cliente = id_cliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
        this.cantpasajeros = cantpasajeros;
        this.asientos = asientos;
        this.costo = costo;
    }

    public int getId_vuelo() {
        return id_vuelo;
    }

    public void setId_vuevlo(int id_vuelo) {
        this.id_vuelo = id_vuelo;
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

    public int getCantpasajeros() {
        return cantpasajeros;
    }

    public void setCantpasajeros(int cantpasajeros) {
        this.cantpasajeros = cantpasajeros;
    }

    public String getAsientos() {
        return asientos;
    }

    public void setAsientos(String asientos) {
        this.asientos = asientos;
    }

    public float getCosto() {
        return costo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }
    
    
}