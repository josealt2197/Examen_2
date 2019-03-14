
package model;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para Reservaciones complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
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
     * Obtiene el valor de la propiedad apellido.
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
     * Define el valor de la propiedad apellido.
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
     * Obtiene el valor de la propiedad cantHuespedes.
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
     * Define el valor de la propiedad cantHuespedes.
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
     * Obtiene el valor de la propiedad correo.
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
     * Define el valor de la propiedad correo.
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
     * Obtiene el valor de la propiedad costoTotal.
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
     * Define el valor de la propiedad costoTotal.
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
     * Obtiene el valor de la propiedad fechaEntrada.
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
     * Define el valor de la propiedad fechaEntrada.
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
     * Obtiene el valor de la propiedad fechaSalida.
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
     * Define el valor de la propiedad fechaSalida.
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
     * Obtiene el valor de la propiedad idCliente.
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
     * Define el valor de la propiedad idCliente.
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
     * Obtiene el valor de la propiedad idHospedaje.
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
     * Define el valor de la propiedad idHospedaje.
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
     * Obtiene el valor de la propiedad idReservacion.
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
     * Define el valor de la propiedad idReservacion.
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
     * Obtiene el valor de la propiedad nombre.
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
     * Define el valor de la propiedad nombre.
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
     * Obtiene el valor de la propiedad telefono.
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
     * Define el valor de la propiedad telefono.
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
