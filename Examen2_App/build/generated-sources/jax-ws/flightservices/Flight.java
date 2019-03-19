
package flightservices;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para Flight complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="Flight"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Id" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="aerolinea" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="avion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="costo" type="{http://www.w3.org/2001/XMLSchema}double" minOccurs="0"/&gt;
 *         &lt;element name="destino" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="disponibles" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="duracion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="fecha" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="horallegada" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="horasalida" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="imagen" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="origen" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="serviciosincluidos" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="vuelo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Flight", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", propOrder = {
    "id",
    "aerolinea",
    "avion",
    "costo",
    "destino",
    "disponibles",
    "duracion",
    "fecha",
    "horallegada",
    "horasalida",
    "imagen",
    "origen",
    "serviciosincluidos",
    "vuelo"
})
public class Flight {

    @XmlElement(name = "Id")
    protected Integer id;
    @XmlElementRef(name = "aerolinea", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> aerolinea;
    @XmlElementRef(name = "avion", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> avion;
    @XmlElementRef(name = "costo", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<Double> costo;
    @XmlElementRef(name = "destino", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> destino;
    @XmlElementRef(name = "disponibles", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> disponibles;
    @XmlElementRef(name = "duracion", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> duracion;
    @XmlElementRef(name = "fecha", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> fecha;
    @XmlElementRef(name = "horallegada", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> horallegada;
    @XmlElementRef(name = "horasalida", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> horasalida;
    @XmlElementRef(name = "imagen", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> imagen;
    @XmlElementRef(name = "origen", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> origen;
    @XmlElementRef(name = "serviciosincluidos", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> serviciosincluidos;
    @XmlElementRef(name = "vuelo", namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", type = JAXBElement.class, required = false)
    protected JAXBElement<String> vuelo;

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
     * Obtiene el valor de la propiedad aerolinea.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getAerolinea() {
        return aerolinea;
    }

    /**
     * Define el valor de la propiedad aerolinea.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setAerolinea(JAXBElement<String> value) {
        this.aerolinea = value;
    }

    /**
     * Obtiene el valor de la propiedad avion.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getAvion() {
        return avion;
    }

    /**
     * Define el valor de la propiedad avion.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setAvion(JAXBElement<String> value) {
        this.avion = value;
    }

    /**
     * Obtiene el valor de la propiedad costo.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Double }{@code >}
     *     
     */
    public JAXBElement<Double> getCosto() {
        return costo;
    }

    /**
     * Define el valor de la propiedad costo.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Double }{@code >}
     *     
     */
    public void setCosto(JAXBElement<Double> value) {
        this.costo = value;
    }

    /**
     * Obtiene el valor de la propiedad destino.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getDestino() {
        return destino;
    }

    /**
     * Define el valor de la propiedad destino.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setDestino(JAXBElement<String> value) {
        this.destino = value;
    }

    /**
     * Obtiene el valor de la propiedad disponibles.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public JAXBElement<Integer> getDisponibles() {
        return disponibles;
    }

    /**
     * Define el valor de la propiedad disponibles.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setDisponibles(JAXBElement<Integer> value) {
        this.disponibles = value;
    }

    /**
     * Obtiene el valor de la propiedad duracion.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getDuracion() {
        return duracion;
    }

    /**
     * Define el valor de la propiedad duracion.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setDuracion(JAXBElement<String> value) {
        this.duracion = value;
    }

    /**
     * Obtiene el valor de la propiedad fecha.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getFecha() {
        return fecha;
    }

    /**
     * Define el valor de la propiedad fecha.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setFecha(JAXBElement<String> value) {
        this.fecha = value;
    }

    /**
     * Obtiene el valor de la propiedad horallegada.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getHorallegada() {
        return horallegada;
    }

    /**
     * Define el valor de la propiedad horallegada.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setHorallegada(JAXBElement<String> value) {
        this.horallegada = value;
    }

    /**
     * Obtiene el valor de la propiedad horasalida.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getHorasalida() {
        return horasalida;
    }

    /**
     * Define el valor de la propiedad horasalida.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setHorasalida(JAXBElement<String> value) {
        this.horasalida = value;
    }

    /**
     * Obtiene el valor de la propiedad imagen.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getImagen() {
        return imagen;
    }

    /**
     * Define el valor de la propiedad imagen.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setImagen(JAXBElement<String> value) {
        this.imagen = value;
    }

    /**
     * Obtiene el valor de la propiedad origen.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getOrigen() {
        return origen;
    }

    /**
     * Define el valor de la propiedad origen.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setOrigen(JAXBElement<String> value) {
        this.origen = value;
    }

    /**
     * Obtiene el valor de la propiedad serviciosincluidos.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getServiciosincluidos() {
        return serviciosincluidos;
    }

    /**
     * Define el valor de la propiedad serviciosincluidos.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setServiciosincluidos(JAXBElement<String> value) {
        this.serviciosincluidos = value;
    }

    /**
     * Obtiene el valor de la propiedad vuelo.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getVuelo() {
        return vuelo;
    }

    /**
     * Define el valor de la propiedad vuelo.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setVuelo(JAXBElement<String> value) {
        this.vuelo = value;
    }

}
