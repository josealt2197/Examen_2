
package flightservices;

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
 *         &lt;element name="SelectFlightResult" type="{http://schemas.datacontract.org/2004/07/FlightService.Models}ArrayOfFlight" minOccurs="0"/&gt;
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
    "selectFlightResult"
})
@XmlRootElement(name = "SelectFlightResponse")
public class SelectFlightResponse {

    @XmlElementRef(name = "SelectFlightResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<ArrayOfFlight> selectFlightResult;

    /**
     * Obtiene el valor de la propiedad selectFlightResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfFlight }{@code >}
     *     
     */
    public JAXBElement<ArrayOfFlight> getSelectFlightResult() {
        return selectFlightResult;
    }

    /**
     * Define el valor de la propiedad selectFlightResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfFlight }{@code >}
     *     
     */
    public void setSelectFlightResult(JAXBElement<ArrayOfFlight> value) {
        this.selectFlightResult = value;
    }

}
