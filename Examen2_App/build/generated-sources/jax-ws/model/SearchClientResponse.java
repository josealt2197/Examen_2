
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
 *         &lt;element name="SearchClientResult" type="{http://schemas.datacontract.org/2004/07/HotelService.Models}ArrayOfTable" minOccurs="0"/&gt;
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
    "searchClientResult"
})
@XmlRootElement(name = "SearchClientResponse")
public class SearchClientResponse {

    @XmlElementRef(name = "SearchClientResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<ArrayOfTable> searchClientResult;

    /**
     * Obtiene el valor de la propiedad searchClientResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfTable }{@code >}
     *     
     */
    public JAXBElement<ArrayOfTable> getSearchClientResult() {
        return searchClientResult;
    }

    /**
     * Define el valor de la propiedad searchClientResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfTable }{@code >}
     *     
     */
    public void setSearchClientResult(JAXBElement<ArrayOfTable> value) {
        this.searchClientResult = value;
    }

}
