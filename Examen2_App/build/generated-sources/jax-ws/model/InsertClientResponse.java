
package model;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="InsertClientResult" type="{http://schemas.datacontract.org/2004/07/HotelService.Models}Table" minOccurs="0"/&gt;
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
    "insertClientResult"
})
@XmlRootElement(name = "InsertClientResponse")
public class InsertClientResponse {

    @XmlElementRef(name = "InsertClientResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<Table> insertClientResult;

    /**
     * Gets the value of the insertClientResult property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Table }{@code >}
     *     
     */
    public JAXBElement<Table> getInsertClientResult() {
        return insertClientResult;
    }

    /**
     * Sets the value of the insertClientResult property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Table }{@code >}
     *     
     */
    public void setInsertClientResult(JAXBElement<Table> value) {
        this.insertClientResult = value;
    }

}
