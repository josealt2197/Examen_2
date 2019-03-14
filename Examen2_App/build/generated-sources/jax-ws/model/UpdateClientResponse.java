
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
 *         &lt;element name="UpdateClientResult" type="{http://schemas.datacontract.org/2004/07/HotelService.Models}Table" minOccurs="0"/&gt;
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
    "updateClientResult"
})
@XmlRootElement(name = "UpdateClientResponse")
public class UpdateClientResponse {

    @XmlElementRef(name = "UpdateClientResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<Table> updateClientResult;

    /**
     * Obtiene el valor de la propiedad updateClientResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Table }{@code >}
     *     
     */
    public JAXBElement<Table> getUpdateClientResult() {
        return updateClientResult;
    }

    /**
     * Define el valor de la propiedad updateClientResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Table }{@code >}
     *     
     */
    public void setUpdateClientResult(JAXBElement<Table> value) {
        this.updateClientResult = value;
    }

}
