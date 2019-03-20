
package model;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para anonymous complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="InsertReservationResult" type="{http://schemas.datacontract.org/2004/07/HotelService.Models}Reservaciones" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "insertReservationResult"
})
@XmlRootElement(name = "InsertReservationResponse")
public class InsertReservationResponse {

    @XmlElementRef(name = "InsertReservationResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<Reservaciones> insertReservationResult;

    /**
     * Obtiene el valor de la propiedad insertReservationResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Reservaciones }{@code >}
     *     
     */
    public JAXBElement<Reservaciones> getInsertReservationResult() {
        return insertReservationResult;
    }

    /**
     * Define el valor de la propiedad insertReservationResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Reservaciones }{@code >}
     *     
     */
    public void setInsertReservationResult(JAXBElement<Reservaciones> value) {
        this.insertReservationResult = value;
    }

}
