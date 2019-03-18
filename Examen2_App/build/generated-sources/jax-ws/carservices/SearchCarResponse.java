
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
 *         &lt;element name="SearchCarResult" type="{http://schemas.datacontract.org/2004/07/CarServices.Models}ArrayOfCar" minOccurs="0"/&gt;
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
    "searchCarResult"
})
@XmlRootElement(name = "SearchCarResponse")
public class SearchCarResponse {

    @XmlElementRef(name = "SearchCarResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<ArrayOfCar> searchCarResult;

    /**
     * Obtiene el valor de la propiedad searchCarResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}
     *     
     */
    public JAXBElement<ArrayOfCar> getSearchCarResult() {
        return searchCarResult;
    }

    /**
     * Define el valor de la propiedad searchCarResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}
     *     
     */
    public void setSearchCarResult(JAXBElement<ArrayOfCar> value) {
        this.searchCarResult = value;
    }

}
