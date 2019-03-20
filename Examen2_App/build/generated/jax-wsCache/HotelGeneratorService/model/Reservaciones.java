
package model;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Reservaciones complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Reservaciones"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Apellido" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Cant_Huespedes" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="Correo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="CostoTotal" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="FechaEntrada" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="FechaSalida" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Id_Cliente" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="Id_Hospedaje" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="Id_Reservacion" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="Nombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="Telefono" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Reservaciones", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", propOrder = {
    "apellido",
    "cantHuespedes",
    "correo",
    "costoTotal",
    "fechaEntrada",
    "fechaSalida",
    "idCliente",
    "idHospedaje",
    "idReservacion",
    "nombre",
    "telefono"
})
public class Reservaciones {

    @XmlElementRef(name = "Apellido", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> apellido;
    @XmlElementRef(name = "Cant_Huespedes", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> cantHuespedes;
    @XmlElementRef(name = "Correo", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> correo;
    @XmlElementRef(name = "CostoTotal", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> costoTotal;
    @XmlElementRef(name = "FechaEntrada", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> fechaEntrada;
    @XmlElementRef(name = "FechaSalida", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> fechaSalida;
    @XmlElementRef(name = "Id_Cliente", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> idCliente;
    @XmlElementRef(name = "Id_Hospedaje", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> idHospedaje;
    @XmlElement(name = "Id_Reservacion")
    protected Integer idReservacion;
    @XmlElementRef(name = "Nombre", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> nombre;
    @XmlElementRef(name = "Telefono", namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> telefono;

    /**
     * Gets the value of the apellido property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getApellido() {
        return apellido;
    }

    /**
     * Sets the value of the apellido property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setApellido(JAXBElement<String> value) {
        this.apellido = value;
    }

    /**
     * Gets the value of the cantHuespedes property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public JAXBElement<Integer> getCantHuespedes() {
        return cantHuespedes;
    }

    /**
     * Sets the value of the cantHuespedes property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setCantHuespedes(JAXBElement<Integer> value) {
        this.cantHuespedes = value;
    }

    /**
     * Gets the value of the correo property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getCorreo() {
        return correo;
    }

    /**
     * Sets the value of the correo property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setCorreo(JAXBElement<String> value) {
        this.correo = value;
    }

    /**
     * Gets the value of the costoTotal property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public JAXBElement<Integer> getCostoTotal() {
        return costoTotal;
    }

    /**
     * Sets the value of the costoTotal property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setCostoTotal(JAXBElement<Integer> value) {
        this.costoTotal = value;
    }

    /**
     * Gets the value of the fechaEntrada property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getFechaEntrada() {
        return fechaEntrada;
    }

    /**
     * Sets the value of the fechaEntrada property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setFechaEntrada(JAXBElement<String> value) {
        this.fechaEntrada = value;
    }

    /**
     * Gets the value of the fechaSalida property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getFechaSalida() {
        return fechaSalida;
    }

    /**
     * Sets the value of the fechaSalida property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setFechaSalida(JAXBElement<String> value) {
        this.fechaSalida = value;
    }

    /**
     * Gets the value of the idCliente property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public JAXBElement<Integer> getIdCliente() {
        return idCliente;
    }

    /**
     * Sets the value of the idCliente property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setIdCliente(JAXBElement<Integer> value) {
        this.idCliente = value;
    }

    /**
     * Gets the value of the idHospedaje property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public JAXBElement<Integer> getIdHospedaje() {
        return idHospedaje;
    }

    /**
     * Sets the value of the idHospedaje property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setIdHospedaje(JAXBElement<Integer> value) {
        this.idHospedaje = value;
    }

    /**
     * Gets the value of the idReservacion property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getIdReservacion() {
        return idReservacion;
    }

    /**
     * Sets the value of the idReservacion property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setIdReservacion(Integer value) {
        this.idReservacion = value;
    }

    /**
     * Gets the value of the nombre property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getNombre() {
        return nombre;
    }

    /**
     * Sets the value of the nombre property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setNombre(JAXBElement<String> value) {
        this.nombre = value;
    }

    /**
     * Gets the value of the telefono property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getTelefono() {
        return telefono;
    }

    /**
     * Sets the value of the telefono property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setTelefono(JAXBElement<String> value) {
        this.telefono = value;
    }

}
