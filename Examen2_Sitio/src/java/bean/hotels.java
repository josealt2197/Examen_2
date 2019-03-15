
package bean;

import java.io.Serializable;

public class hotels implements Serializable{
    
    public int id; 
    public String NombreHos; 
    public String Tipo; 
    public int CantidadHuespedes; 
    public String UbicacionExacta;
    public String ProvinciaHos;
    public String ServiciosIncluidos; 
    public int Precio;
    public String ImagenHos;
    public String HoraEntradaHos;
    public String HoraSalidaHos;
    public String DescripcionHos;
    public String ImagenDetail;
    
    public hotels(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreHos() {
        return NombreHos;
    }

    public void setNombreHos(String NombreHos) {
        this.NombreHos = NombreHos;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public int getCantidadHuespedes() {
        return CantidadHuespedes;
    }

    public void setCantidadHuespedes(int CantidadHuespedes) {
        this.CantidadHuespedes = CantidadHuespedes;
    }

    public String getUbicacionExacta() {
        return UbicacionExacta;
    }

    public void setUbicacionExacta(String UbicacionExacta) {
        this.UbicacionExacta = UbicacionExacta;
    }

    public String getProvinciaHos() {
        return ProvinciaHos;
    }

    public void setProvinciaHos(String ProvinciaHos) {
        this.ProvinciaHos = ProvinciaHos;
    }

    public String getServiciosIncluidos() {
        return ServiciosIncluidos;
    }

    public void setServiciosIncluidos(String ServiciosIncluidos) {
        this.ServiciosIncluidos = ServiciosIncluidos;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public String getImagenHos() {
        return ImagenHos;
    }

    public void setImagenHos(String ImagenHos) {
        this.ImagenHos = ImagenHos;
    }

    public String getHoraEntradaHos() {
        return HoraEntradaHos;
    }

    public void setHoraEntradaHos(String HoraEntradaHos) {
        this.HoraEntradaHos = HoraEntradaHos;
    }

    public String getHoraSalidaHos() {
        return HoraSalidaHos;
    }

    public void setHoraSalidaHos(String HoraSalidaHos) {
        this.HoraSalidaHos = HoraSalidaHos;
    }

    public String getDescripcionHos() {
        return DescripcionHos;
    }

    public void setDescripcionHos(String DescripcionHos) {
        this.DescripcionHos = DescripcionHos;
    }

    public String getImagenDetail() {
        return ImagenDetail;
    }

    public void setImagenDetail(String ImagenDetail) {
        this.ImagenDetail = ImagenDetail;
    }
       
}
