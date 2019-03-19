
package flightservices;

import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the flightservices package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _FlightReservation_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "FlightReservation");
    private final static QName _ArrayOfFlight_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "ArrayOfFlight");
    private final static QName _Flight_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "Flight");
    private final static QName _AnyType_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "anyType");
    private final static QName _AnyURI_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "anyURI");
    private final static QName _Base64Binary_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "base64Binary");
    private final static QName _Boolean_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "boolean");
    private final static QName _Byte_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "byte");
    private final static QName _DateTime_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "dateTime");
    private final static QName _Decimal_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "decimal");
    private final static QName _Double_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "double");
    private final static QName _Float_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "float");
    private final static QName _Int_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "int");
    private final static QName _Long_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "long");
    private final static QName _QName_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "QName");
    private final static QName _Short_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "short");
    private final static QName _String_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "string");
    private final static QName _UnsignedByte_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedByte");
    private final static QName _UnsignedInt_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedInt");
    private final static QName _UnsignedLong_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedLong");
    private final static QName _UnsignedShort_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "unsignedShort");
    private final static QName _Char_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "char");
    private final static QName _Duration_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "duration");
    private final static QName _Guid_QNAME = new QName("http://schemas.microsoft.com/2003/10/Serialization/", "guid");
    private final static QName _InsertFlightReservationNombre_QNAME = new QName("http://tempuri.org/", "nombre");
    private final static QName _InsertFlightReservationApellido_QNAME = new QName("http://tempuri.org/", "apellido");
    private final static QName _InsertFlightReservationTelefono_QNAME = new QName("http://tempuri.org/", "telefono");
    private final static QName _InsertFlightReservationCorreo_QNAME = new QName("http://tempuri.org/", "correo");
    private final static QName _InsertFlightReservationAsientos_QNAME = new QName("http://tempuri.org/", "asientos");
    private final static QName _InsertFlightReservationClase_QNAME = new QName("http://tempuri.org/", "clase");
    private final static QName _InsertFlightReservationResponseInsertFlightReservationResult_QNAME = new QName("http://tempuri.org/", "InsertFlightReservationResult");
    private final static QName _SelectFlightResponseSelectFlightResult_QNAME = new QName("http://tempuri.org/", "SelectFlightResult");
    private final static QName _SearchFlightResponseSearchFlightResult_QNAME = new QName("http://tempuri.org/", "SearchFlightResult");
    private final static QName _FlightAerolinea_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "aerolinea");
    private final static QName _FlightAvion_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "avion");
    private final static QName _FlightCosto_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "costo");
    private final static QName _FlightDestino_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "destino");
    private final static QName _FlightDisponibles_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "disponibles");
    private final static QName _FlightDuracion_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "duracion");
    private final static QName _FlightFecha_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "fecha");
    private final static QName _FlightHorallegada_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "horallegada");
    private final static QName _FlightHorasalida_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "horasalida");
    private final static QName _FlightImagen_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "imagen");
    private final static QName _FlightOrigen_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "origen");
    private final static QName _FlightServiciosincluidos_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "serviciosincluidos");
    private final static QName _FlightVuelo_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "vuelo");
    private final static QName _FlightReservationApellidos_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "apellidos");
    private final static QName _FlightReservationAsientos_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "asientos");
    private final static QName _FlightReservationCantpasajeros_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "cantpasajeros");
    private final static QName _FlightReservationClase_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "clase");
    private final static QName _FlightReservationCorreo_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "correo");
    private final static QName _FlightReservationCostototal_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "costototal");
    private final static QName _FlightReservationNombre_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "nombre");
    private final static QName _FlightReservationTelefono_QNAME = new QName("http://schemas.datacontract.org/2004/07/FlightService.Models", "telefono");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: flightservices
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertFlightReservation }
     * 
     */
    public InsertFlightReservation createInsertFlightReservation() {
        return new InsertFlightReservation();
    }

    /**
     * Create an instance of {@link InsertFlightReservationResponse }
     * 
     */
    public InsertFlightReservationResponse createInsertFlightReservationResponse() {
        return new InsertFlightReservationResponse();
    }

    /**
     * Create an instance of {@link FlightReservation }
     * 
     */
    public FlightReservation createFlightReservation() {
        return new FlightReservation();
    }

    /**
     * Create an instance of {@link SelectFlight }
     * 
     */
    public SelectFlight createSelectFlight() {
        return new SelectFlight();
    }

    /**
     * Create an instance of {@link SelectFlightResponse }
     * 
     */
    public SelectFlightResponse createSelectFlightResponse() {
        return new SelectFlightResponse();
    }

    /**
     * Create an instance of {@link ArrayOfFlight }
     * 
     */
    public ArrayOfFlight createArrayOfFlight() {
        return new ArrayOfFlight();
    }

    /**
     * Create an instance of {@link SearchFlight }
     * 
     */
    public SearchFlight createSearchFlight() {
        return new SearchFlight();
    }

    /**
     * Create an instance of {@link SearchFlightResponse }
     * 
     */
    public SearchFlightResponse createSearchFlightResponse() {
        return new SearchFlightResponse();
    }

    /**
     * Create an instance of {@link Flight }
     * 
     */
    public Flight createFlight() {
        return new Flight();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FlightReservation }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "FlightReservation")
    public JAXBElement<FlightReservation> createFlightReservation(FlightReservation value) {
        return new JAXBElement<FlightReservation>(_FlightReservation_QNAME, FlightReservation.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfFlight }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "ArrayOfFlight")
    public JAXBElement<ArrayOfFlight> createArrayOfFlight(ArrayOfFlight value) {
        return new JAXBElement<ArrayOfFlight>(_ArrayOfFlight_QNAME, ArrayOfFlight.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Flight }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "Flight")
    public JAXBElement<Flight> createFlight(Flight value) {
        return new JAXBElement<Flight>(_Flight_QNAME, Flight.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Object }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "anyType")
    public JAXBElement<Object> createAnyType(Object value) {
        return new JAXBElement<Object>(_AnyType_QNAME, Object.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "anyURI")
    public JAXBElement<String> createAnyURI(String value) {
        return new JAXBElement<String>(_AnyURI_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link byte[]}{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "base64Binary")
    public JAXBElement<byte[]> createBase64Binary(byte[] value) {
        return new JAXBElement<byte[]>(_Base64Binary_QNAME, byte[].class, null, ((byte[]) value));
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Boolean }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "boolean")
    public JAXBElement<Boolean> createBoolean(Boolean value) {
        return new JAXBElement<Boolean>(_Boolean_QNAME, Boolean.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Byte }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "byte")
    public JAXBElement<Byte> createByte(Byte value) {
        return new JAXBElement<Byte>(_Byte_QNAME, Byte.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link XMLGregorianCalendar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "dateTime")
    public JAXBElement<XMLGregorianCalendar> createDateTime(XMLGregorianCalendar value) {
        return new JAXBElement<XMLGregorianCalendar>(_DateTime_QNAME, XMLGregorianCalendar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigDecimal }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "decimal")
    public JAXBElement<BigDecimal> createDecimal(BigDecimal value) {
        return new JAXBElement<BigDecimal>(_Decimal_QNAME, BigDecimal.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Double }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "double")
    public JAXBElement<Double> createDouble(Double value) {
        return new JAXBElement<Double>(_Double_QNAME, Double.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Float }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "float")
    public JAXBElement<Float> createFloat(Float value) {
        return new JAXBElement<Float>(_Float_QNAME, Float.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "int")
    public JAXBElement<Integer> createInt(Integer value) {
        return new JAXBElement<Integer>(_Int_QNAME, Integer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Long }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "long")
    public JAXBElement<Long> createLong(Long value) {
        return new JAXBElement<Long>(_Long_QNAME, Long.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link QName }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "QName")
    public JAXBElement<QName> createQName(QName value) {
        return new JAXBElement<QName>(_QName_QNAME, QName.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "short")
    public JAXBElement<Short> createShort(Short value) {
        return new JAXBElement<Short>(_Short_QNAME, Short.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "string")
    public JAXBElement<String> createString(String value) {
        return new JAXBElement<String>(_String_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Short }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedByte")
    public JAXBElement<Short> createUnsignedByte(Short value) {
        return new JAXBElement<Short>(_UnsignedByte_QNAME, Short.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Long }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedInt")
    public JAXBElement<Long> createUnsignedInt(Long value) {
        return new JAXBElement<Long>(_UnsignedInt_QNAME, Long.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link BigInteger }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedLong")
    public JAXBElement<BigInteger> createUnsignedLong(BigInteger value) {
        return new JAXBElement<BigInteger>(_UnsignedLong_QNAME, BigInteger.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "unsignedShort")
    public JAXBElement<Integer> createUnsignedShort(Integer value) {
        return new JAXBElement<Integer>(_UnsignedShort_QNAME, Integer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "char")
    public JAXBElement<Integer> createChar(Integer value) {
        return new JAXBElement<Integer>(_Char_QNAME, Integer.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Duration }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "duration")
    public JAXBElement<Duration> createDuration(Duration value) {
        return new JAXBElement<Duration>(_Duration_QNAME, Duration.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.microsoft.com/2003/10/Serialization/", name = "guid")
    public JAXBElement<String> createGuid(String value) {
        return new JAXBElement<String>(_Guid_QNAME, String.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "nombre", scope = InsertFlightReservation.class)
    public JAXBElement<String> createInsertFlightReservationNombre(String value) {
        return new JAXBElement<String>(_InsertFlightReservationNombre_QNAME, String.class, InsertFlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "apellido", scope = InsertFlightReservation.class)
    public JAXBElement<String> createInsertFlightReservationApellido(String value) {
        return new JAXBElement<String>(_InsertFlightReservationApellido_QNAME, String.class, InsertFlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telefono", scope = InsertFlightReservation.class)
    public JAXBElement<String> createInsertFlightReservationTelefono(String value) {
        return new JAXBElement<String>(_InsertFlightReservationTelefono_QNAME, String.class, InsertFlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "correo", scope = InsertFlightReservation.class)
    public JAXBElement<String> createInsertFlightReservationCorreo(String value) {
        return new JAXBElement<String>(_InsertFlightReservationCorreo_QNAME, String.class, InsertFlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "asientos", scope = InsertFlightReservation.class)
    public JAXBElement<String> createInsertFlightReservationAsientos(String value) {
        return new JAXBElement<String>(_InsertFlightReservationAsientos_QNAME, String.class, InsertFlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "clase", scope = InsertFlightReservation.class)
    public JAXBElement<String> createInsertFlightReservationClase(String value) {
        return new JAXBElement<String>(_InsertFlightReservationClase_QNAME, String.class, InsertFlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link FlightReservation }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "InsertFlightReservationResult", scope = InsertFlightReservationResponse.class)
    public JAXBElement<FlightReservation> createInsertFlightReservationResponseInsertFlightReservationResult(FlightReservation value) {
        return new JAXBElement<FlightReservation>(_InsertFlightReservationResponseInsertFlightReservationResult_QNAME, FlightReservation.class, InsertFlightReservationResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfFlight }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SelectFlightResult", scope = SelectFlightResponse.class)
    public JAXBElement<ArrayOfFlight> createSelectFlightResponseSelectFlightResult(ArrayOfFlight value) {
        return new JAXBElement<ArrayOfFlight>(_SelectFlightResponseSelectFlightResult_QNAME, ArrayOfFlight.class, SelectFlightResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfFlight }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SearchFlightResult", scope = SearchFlightResponse.class)
    public JAXBElement<ArrayOfFlight> createSearchFlightResponseSearchFlightResult(ArrayOfFlight value) {
        return new JAXBElement<ArrayOfFlight>(_SearchFlightResponseSearchFlightResult_QNAME, ArrayOfFlight.class, SearchFlightResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "aerolinea", scope = Flight.class)
    public JAXBElement<String> createFlightAerolinea(String value) {
        return new JAXBElement<String>(_FlightAerolinea_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "avion", scope = Flight.class)
    public JAXBElement<String> createFlightAvion(String value) {
        return new JAXBElement<String>(_FlightAvion_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Double }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "costo", scope = Flight.class)
    public JAXBElement<Double> createFlightCosto(Double value) {
        return new JAXBElement<Double>(_FlightCosto_QNAME, Double.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "destino", scope = Flight.class)
    public JAXBElement<String> createFlightDestino(String value) {
        return new JAXBElement<String>(_FlightDestino_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "disponibles", scope = Flight.class)
    public JAXBElement<Integer> createFlightDisponibles(Integer value) {
        return new JAXBElement<Integer>(_FlightDisponibles_QNAME, Integer.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "duracion", scope = Flight.class)
    public JAXBElement<String> createFlightDuracion(String value) {
        return new JAXBElement<String>(_FlightDuracion_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "fecha", scope = Flight.class)
    public JAXBElement<String> createFlightFecha(String value) {
        return new JAXBElement<String>(_FlightFecha_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "horallegada", scope = Flight.class)
    public JAXBElement<String> createFlightHorallegada(String value) {
        return new JAXBElement<String>(_FlightHorallegada_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "horasalida", scope = Flight.class)
    public JAXBElement<String> createFlightHorasalida(String value) {
        return new JAXBElement<String>(_FlightHorasalida_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "imagen", scope = Flight.class)
    public JAXBElement<String> createFlightImagen(String value) {
        return new JAXBElement<String>(_FlightImagen_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "origen", scope = Flight.class)
    public JAXBElement<String> createFlightOrigen(String value) {
        return new JAXBElement<String>(_FlightOrigen_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "serviciosincluidos", scope = Flight.class)
    public JAXBElement<String> createFlightServiciosincluidos(String value) {
        return new JAXBElement<String>(_FlightServiciosincluidos_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "vuelo", scope = Flight.class)
    public JAXBElement<String> createFlightVuelo(String value) {
        return new JAXBElement<String>(_FlightVuelo_QNAME, String.class, Flight.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "apellidos", scope = FlightReservation.class)
    public JAXBElement<String> createFlightReservationApellidos(String value) {
        return new JAXBElement<String>(_FlightReservationApellidos_QNAME, String.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "asientos", scope = FlightReservation.class)
    public JAXBElement<String> createFlightReservationAsientos(String value) {
        return new JAXBElement<String>(_FlightReservationAsientos_QNAME, String.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "cantpasajeros", scope = FlightReservation.class)
    public JAXBElement<Integer> createFlightReservationCantpasajeros(Integer value) {
        return new JAXBElement<Integer>(_FlightReservationCantpasajeros_QNAME, Integer.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "clase", scope = FlightReservation.class)
    public JAXBElement<String> createFlightReservationClase(String value) {
        return new JAXBElement<String>(_FlightReservationClase_QNAME, String.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "correo", scope = FlightReservation.class)
    public JAXBElement<String> createFlightReservationCorreo(String value) {
        return new JAXBElement<String>(_FlightReservationCorreo_QNAME, String.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Double }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "costototal", scope = FlightReservation.class)
    public JAXBElement<Double> createFlightReservationCostototal(Double value) {
        return new JAXBElement<Double>(_FlightReservationCostototal_QNAME, Double.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "nombre", scope = FlightReservation.class)
    public JAXBElement<String> createFlightReservationNombre(String value) {
        return new JAXBElement<String>(_FlightReservationNombre_QNAME, String.class, FlightReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/FlightService.Models", name = "telefono", scope = FlightReservation.class)
    public JAXBElement<String> createFlightReservationTelefono(String value) {
        return new JAXBElement<String>(_FlightReservationTelefono_QNAME, String.class, FlightReservation.class, value);
    }

}
