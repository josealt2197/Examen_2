
package flightservices;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "FlightService", targetNamespace = "http://tempuri.org/", wsdlLocation = "http://localhost:52396/FlightService.svc?wsdl")
public class FlightService
    extends Service
{

    private final static URL FLIGHTSERVICE_WSDL_LOCATION;
    private final static WebServiceException FLIGHTSERVICE_EXCEPTION;
    private final static QName FLIGHTSERVICE_QNAME = new QName("http://tempuri.org/", "FlightService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://localhost:52396/FlightService.svc?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        FLIGHTSERVICE_WSDL_LOCATION = url;
        FLIGHTSERVICE_EXCEPTION = e;
    }

    public FlightService() {
        super(__getWsdlLocation(), FLIGHTSERVICE_QNAME);
    }

    public FlightService(WebServiceFeature... features) {
        super(__getWsdlLocation(), FLIGHTSERVICE_QNAME, features);
    }

    public FlightService(URL wsdlLocation) {
        super(wsdlLocation, FLIGHTSERVICE_QNAME);
    }

    public FlightService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, FLIGHTSERVICE_QNAME, features);
    }

    public FlightService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public FlightService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns IFlightService
     */
    @WebEndpoint(name = "BasicHttpBinding_IFlightService")
    public IFlightService getBasicHttpBindingIFlightService() {
        return super.getPort(new QName("http://tempuri.org/", "BasicHttpBinding_IFlightService"), IFlightService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns IFlightService
     */
    @WebEndpoint(name = "BasicHttpBinding_IFlightService")
    public IFlightService getBasicHttpBindingIFlightService(WebServiceFeature... features) {
        return super.getPort(new QName("http://tempuri.org/", "BasicHttpBinding_IFlightService"), IFlightService.class, features);
    }

    private static URL __getWsdlLocation() {
        if (FLIGHTSERVICE_EXCEPTION!= null) {
            throw FLIGHTSERVICE_EXCEPTION;
        }
        return FLIGHTSERVICE_WSDL_LOCATION;
    }

}