
package model;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para Hotel complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="Hotel"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="CantidadHuespedes" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="DescripcionHos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="HoraEntradaHos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="HoraSalidaHos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Id" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ImagenHos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="NombreHos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Precio" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ProvinciaHos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="ServiciosIncluidos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Tipo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="UbicacionExacta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Hotel", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", propOrder = {
    "cantidadHuespedes",
    "descripcionHos",
    "horaEntradaHos",
    "horaSalidaHos",
    "id",
    "imagenHos",
    "nombreHos",
    "precio",
    "provinciaHos",
    "serviciosIncluidos",
    "tipo",
    "ubicacionExacta"
})
public class Hotel {

    @XmlElement(name = "CantidadHuespedes")
    protected Integer cantidadHuespedes;
    @XmlElementRef(name = "DescripcionHos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> descripcionHos;
    @XmlElementRef(name = "HoraEntradaHos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> horaEntradaHos;
    @XmlElementRef(name = "HoraSalidaHos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> horaSalidaHos;
    @XmlElement(name = "Id")
    protected Integer id;
    @XmlElementRef(name = "ImagenHos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> imagenHos;
    @XmlElementRef(name = "NombreHos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> nombreHos;
    @XmlElement(name = "Precio")
    protected Integer precio;
    @XmlElementRef(name = "ProvinciaHos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> provinciaHos;
    @XmlElementRef(name = "ServiciosIncluidos", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> serviciosIncluidos;
    @XmlElementRef(name = "Tipo", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> tipo;
    @XmlElementRef(name = "UbicacionExacta", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> ubicacionExacta;

    /**
     * Obtiene el valor de la propiedad cantidadHuespedes.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getCantidadHuespedes() {
        return cantidadHuespedes;
    }

    /**
     * Define el valor de la propiedad cantidadHuespedes.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setCantidadHuespedes(Integer value) {
        this.cantidadHuespedes = value;
    }

    /**
     * Obtiene el valor de la propiedad descripcionHos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getDescripcionHos() {
        return descripcionHos;
    }

    /**
     * Define el valor de la propiedad descripcionHos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setDescripcionHos(JAXBElement<String> value) {
        this.descripcionHos = value;
    }

    /**
     * Obtiene el valor de la propiedad horaEntradaHos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getHoraEntradaHos() {
        return horaEntradaHos;
    }

    /**
     * Define el valor de la propiedad horaEntradaHos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setHoraEntradaHos(JAXBElement<String> value) {
        this.horaEntradaHos = value;
    }

    /**
     * Obtiene el valor de la propiedad horaSalidaHos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getHoraSalidaHos() {
        return horaSalidaHos;
    }

    /**
     * Define el valor de la propiedad horaSalidaHos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setHoraSalidaHos(JAXBElement<String> value) {
        this.horaSalidaHos = value;
    }

    /**
     * Obtiene el valor de la propiedad id.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getId() {
        return id;
    }

    /**
     * Define el valor de la propiedad id.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setId(Integer value) {
        this.id = value;
    }

    /**
     * Obtiene el valor de la propiedad imagenHos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getImagenHos() {
        return imagenHos;
    }

    /**
     * Define el valor de la propiedad imagenHos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setImagenHos(JAXBElement<String> value) {
        this.imagenHos = value;
    }

    /**
     * Obtiene el valor de la propiedad nombreHos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getNombreHos() {
        return nombreHos;
    }

    /**
     * Define el valor de la propiedad nombreHos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setNombreHos(JAXBElement<String> value) {
        this.nombreHos = value;
    }

    /**
     * Obtiene el valor de la propiedad precio.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getPrecio() {
        return precio;
    }

    /**
     * Define el valor de la propiedad precio.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setPrecio(Integer value) {
        this.precio = value;
    }

    /**
     * Obtiene el valor de la propiedad provinciaHos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getProvinciaHos() {
        return provinciaHos;
    }

    /**
     * Define el valor de la propiedad provinciaHos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setProvinciaHos(JAXBElement<String> value) {
        this.provinciaHos = value;
    }

    /**
     * Obtiene el valor de la propiedad serviciosIncluidos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getServiciosIncluidos() {
        return serviciosIncluidos;
    }

    /**
     * Define el valor de la propiedad serviciosIncluidos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setServiciosIncluidos(JAXBElement<String> value) {
        this.serviciosIncluidos = value;
    }

    /**
     * Obtiene el valor de la propiedad tipo.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getTipo() {
        return tipo;
    }

    /**
     * Define el valor de la propiedad tipo.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setTipo(JAXBElement<String> value) {
        this.tipo = value;
    }

    /**
     * Obtiene el valor de la propiedad ubicacionExacta.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getUbicacionExacta() {
        return ubicacionExacta;
    }

    /**
     * Define el valor de la propiedad ubicacionExacta.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setUbicacionExacta(JAXBElement<String> value) {
        this.ubicacionExacta = value;
    }

}
