
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
 *         &lt;element name="SelectCarResult" type="{http://schemas.datacontract.org/2004/07/CarServices.Models}ArrayOfCar" minOccurs="0"/&gt;
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
    "selectCarResult"
})
@XmlRootElement(name = "SelectCarResponse")
public class SelectCarResponse {

    @XmlElementRef(name = "SelectCarResult", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<ArrayOfCar> selectCarResult;

    /**
     * Obtiene el valor de la propiedad selectCarResult.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}
     *     
     */
    public JAXBElement<ArrayOfCar> getSelectCarResult() {
        return selectCarResult;
    }

    /**
     * Define el valor de la propiedad selectCarResult.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}
     *     
     */
    public void setSelectCarResult(JAXBElement<ArrayOfCar> value) {
        this.selectCarResult = value;
    }

}
