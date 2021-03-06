
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
 *         &lt;element name="SelectHotelsResult" type="{http://schemas.datacontract.org/2004/07/HotelService.Models}ArrayOfHotel" minOccurs="0"/&gt;
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
    "selectHotelsResult"
})
@XmlRootElement(name = "SelectHotelsResponse")
public class SelectHotelsResponse {

    @XmlElementRef(name = "SelectHotelsResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<ArrayOfHotel> selectHotelsResult;

    /**
     * Obtiene el valor de la propiedad selectHotelsResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfHotel }{@code >}
     *     
     */
    public JAXBElement<ArrayOfHotel> getSelectHotelsResult() {
        return selectHotelsResult;
    }

    /**
     * Define el valor de la propiedad selectHotelsResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfHotel }{@code >}
     *     
     */
    public void setSelectHotelsResult(JAXBElement<ArrayOfHotel> value) {
        this.selectHotelsResult = value;
    }

}
