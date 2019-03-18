
package carservices;

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
 *         &lt;element name="InsertCarReservationResult" type="{http://schemas.datacontract.org/2004/07/CarServices.Models}CarReservation" minOccurs="0"/&gt;
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
    "insertCarReservationResult"
})
@XmlRootElement(name = "InsertCarReservationResponse")
public class InsertCarReservationResponse {

    @XmlElementRef(name = "InsertCarReservationResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<CarReservation> insertCarReservationResult;

    /**
     * Obtiene el valor de la propiedad insertCarReservationResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link CarReservation }{@code >}
     *     
     */
    public JAXBElement<CarReservation> getInsertCarReservationResult() {
        return insertCarReservationResult;
    }

    /**
     * Define el valor de la propiedad insertCarReservationResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link CarReservation }{@code >}
     *     
     */
    public void setInsertCarReservationResult(JAXBElement<CarReservation> value) {
        this.insertCarReservationResult = value;
    }

}
