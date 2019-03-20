
package model;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Hotel complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
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
     * Gets the value of the cantidadHuespedes property.
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
     * Sets the value of the cantidadHuespedes property.
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
     * Gets the value of the descripcionHos property.
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
     * Sets the value of the descripcionHos property.
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
     * Gets the value of the horaEntradaHos property.
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
     * Sets the value of the horaEntradaHos property.
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
     * Gets the value of the horaSalidaHos property.
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
     * Sets the value of the horaSalidaHos property.
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
     * Gets the value of the id property.
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
     * Sets the value of the id property.
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
     * Gets the value of the imagenHos property.
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
     * Sets the value of the imagenHos property.
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
     * Gets the value of the nombreHos property.
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
     * Sets the value of the nombreHos property.
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
     * Gets the value of the precio property.
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
     * Sets the value of the precio property.
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
     * Gets the value of the provinciaHos property.
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
     * Sets the value of the provinciaHos property.
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
     * Gets the value of the serviciosIncluidos property.
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
     * Sets the value of the serviciosIncluidos property.
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
     * Gets the value of the tipo property.
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
     * Sets the value of the tipo property.
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
     * Gets the value of the ubicacionExacta property.
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
     * Sets the value of the ubicacionExacta property.
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
