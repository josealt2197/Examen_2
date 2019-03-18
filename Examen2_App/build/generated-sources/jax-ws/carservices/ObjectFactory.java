
package carservices;

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
 * generated in the carservices package. 
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

    private final static QName _CarReservation_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "CarReservation");
    private final static QName _ArrayOfCar_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "ArrayOfCar");
    private final static QName _Car_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "Car");
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
    private final static QName _InsertCarReservationNombre_QNAME = new QName("http://tempuri.org/", "nombre");
    private final static QName _InsertCarReservationApellido_QNAME = new QName("http://tempuri.org/", "apellido");
    private final static QName _InsertCarReservationTelefono_QNAME = new QName("http://tempuri.org/", "telefono");
    private final static QName _InsertCarReservationCorreo_QNAME = new QName("http://tempuri.org/", "correo");
    private final static QName _InsertCarReservationHoraentrada_QNAME = new QName("http://tempuri.org/", "horaentrada");
    private final static QName _InsertCarReservationHorasalida_QNAME = new QName("http://tempuri.org/", "horasalida");
    private final static QName _InsertCarReservationFechaentrada_QNAME = new QName("http://tempuri.org/", "fechaentrada");
    private final static QName _InsertCarReservationFechasalida_QNAME = new QName("http://tempuri.org/", "fechasalida");
    private final static QName _InsertCarReservationLugar_QNAME = new QName("http://tempuri.org/", "lugar");
    private final static QName _InsertCarReservationResponseInsertCarReservationResult_QNAME = new QName("http://tempuri.org/", "InsertCarReservationResult");
    private final static QName _SelectCarResponseSelectCarResult_QNAME = new QName("http://tempuri.org/", "SelectCarResult");
    private final static QName _SearchCarResponseSearchCarResult_QNAME = new QName("http://tempuri.org/", "SearchCarResult");
    private final static QName _CarEmpresa_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "empresa");
    private final static QName _CarExtras_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "extras");
    private final static QName _CarModelo_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "modelo");
    private final static QName _CarRestricciones_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "restricciones");
    private final static QName _CarServicios_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "servicios");
    private final static QName _CarTipo_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "tipo");
    private final static QName _CarTransmision_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "transmision");
    private final static QName _CarUbicacion_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "ubicacion");
    private final static QName _CarReservationApellidos_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "apellidos");
    private final static QName _CarReservationCorreo_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "correo");
    private final static QName _CarReservationFechaentrada_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "fechaentrada");
    private final static QName _CarReservationFechasalida_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "fechasalida");
    private final static QName _CarReservationHoraentrada_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "horaentrada");
    private final static QName _CarReservationHorasalida_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "horasalida");
    private final static QName _CarReservationLugar_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "lugar");
    private final static QName _CarReservationNombre_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "nombre");
    private final static QName _CarReservationTelefono_QNAME = new QName("http://schemas.datacontract.org/2004/07/CarServices.Models", "telefono");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: carservices
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertCarReservation }
     * 
     */
    public InsertCarReservation createInsertCarReservation() {
        return new InsertCarReservation();
    }

    /**
     * Create an instance of {@link InsertCarReservationResponse }
     * 
     */
    public InsertCarReservationResponse createInsertCarReservationResponse() {
        return new InsertCarReservationResponse();
    }

    /**
     * Create an instance of {@link CarReservation }
     * 
     */
    public CarReservation createCarReservation() {
        return new CarReservation();
    }

    /**
     * Create an instance of {@link SelectCar }
     * 
     */
    public SelectCar createSelectCar() {
        return new SelectCar();
    }

    /**
     * Create an instance of {@link SelectCarResponse }
     * 
     */
    public SelectCarResponse createSelectCarResponse() {
        return new SelectCarResponse();
    }

    /**
     * Create an instance of {@link ArrayOfCar }
     * 
     */
    public ArrayOfCar createArrayOfCar() {
        return new ArrayOfCar();
    }

    /**
     * Create an instance of {@link SearchCar }
     * 
     */
    public SearchCar createSearchCar() {
        return new SearchCar();
    }

    /**
     * Create an instance of {@link SearchCarResponse }
     * 
     */
    public SearchCarResponse createSearchCarResponse() {
        return new SearchCarResponse();
    }

    /**
     * Create an instance of {@link Car }
     * 
     */
    public Car createCar() {
        return new Car();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CarReservation }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "CarReservation")
    public JAXBElement<CarReservation> createCarReservation(CarReservation value) {
        return new JAXBElement<CarReservation>(_CarReservation_QNAME, CarReservation.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "ArrayOfCar")
    public JAXBElement<ArrayOfCar> createArrayOfCar(ArrayOfCar value) {
        return new JAXBElement<ArrayOfCar>(_ArrayOfCar_QNAME, ArrayOfCar.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Car }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "Car")
    public JAXBElement<Car> createCar(Car value) {
        return new JAXBElement<Car>(_Car_QNAME, Car.class, null, value);
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
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "nombre", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationNombre(String value) {
        return new JAXBElement<String>(_InsertCarReservationNombre_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "apellido", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationApellido(String value) {
        return new JAXBElement<String>(_InsertCarReservationApellido_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telefono", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationTelefono(String value) {
        return new JAXBElement<String>(_InsertCarReservationTelefono_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "correo", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationCorreo(String value) {
        return new JAXBElement<String>(_InsertCarReservationCorreo_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "horaentrada", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationHoraentrada(String value) {
        return new JAXBElement<String>(_InsertCarReservationHoraentrada_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "horasalida", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationHorasalida(String value) {
        return new JAXBElement<String>(_InsertCarReservationHorasalida_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "fechaentrada", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationFechaentrada(String value) {
        return new JAXBElement<String>(_InsertCarReservationFechaentrada_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "fechasalida", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationFechasalida(String value) {
        return new JAXBElement<String>(_InsertCarReservationFechasalida_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "lugar", scope = InsertCarReservation.class)
    public JAXBElement<String> createInsertCarReservationLugar(String value) {
        return new JAXBElement<String>(_InsertCarReservationLugar_QNAME, String.class, InsertCarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CarReservation }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "InsertCarReservationResult", scope = InsertCarReservationResponse.class)
    public JAXBElement<CarReservation> createInsertCarReservationResponseInsertCarReservationResult(CarReservation value) {
        return new JAXBElement<CarReservation>(_InsertCarReservationResponseInsertCarReservationResult_QNAME, CarReservation.class, InsertCarReservationResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SelectCarResult", scope = SelectCarResponse.class)
    public JAXBElement<ArrayOfCar> createSelectCarResponseSelectCarResult(ArrayOfCar value) {
        return new JAXBElement<ArrayOfCar>(_SelectCarResponseSelectCarResult_QNAME, ArrayOfCar.class, SelectCarResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfCar }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SearchCarResult", scope = SearchCarResponse.class)
    public JAXBElement<ArrayOfCar> createSearchCarResponseSearchCarResult(ArrayOfCar value) {
        return new JAXBElement<ArrayOfCar>(_SearchCarResponseSearchCarResult_QNAME, ArrayOfCar.class, SearchCarResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "empresa", scope = Car.class)
    public JAXBElement<String> createCarEmpresa(String value) {
        return new JAXBElement<String>(_CarEmpresa_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "extras", scope = Car.class)
    public JAXBElement<String> createCarExtras(String value) {
        return new JAXBElement<String>(_CarExtras_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "modelo", scope = Car.class)
    public JAXBElement<String> createCarModelo(String value) {
        return new JAXBElement<String>(_CarModelo_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "restricciones", scope = Car.class)
    public JAXBElement<String> createCarRestricciones(String value) {
        return new JAXBElement<String>(_CarRestricciones_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "servicios", scope = Car.class)
    public JAXBElement<String> createCarServicios(String value) {
        return new JAXBElement<String>(_CarServicios_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "tipo", scope = Car.class)
    public JAXBElement<String> createCarTipo(String value) {
        return new JAXBElement<String>(_CarTipo_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "transmision", scope = Car.class)
    public JAXBElement<String> createCarTransmision(String value) {
        return new JAXBElement<String>(_CarTransmision_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "ubicacion", scope = Car.class)
    public JAXBElement<String> createCarUbicacion(String value) {
        return new JAXBElement<String>(_CarUbicacion_QNAME, String.class, Car.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "apellidos", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationApellidos(String value) {
        return new JAXBElement<String>(_CarReservationApellidos_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "correo", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationCorreo(String value) {
        return new JAXBElement<String>(_CarReservationCorreo_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "fechaentrada", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationFechaentrada(String value) {
        return new JAXBElement<String>(_CarReservationFechaentrada_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "fechasalida", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationFechasalida(String value) {
        return new JAXBElement<String>(_CarReservationFechasalida_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "horaentrada", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationHoraentrada(String value) {
        return new JAXBElement<String>(_CarReservationHoraentrada_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "horasalida", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationHorasalida(String value) {
        return new JAXBElement<String>(_CarReservationHorasalida_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "lugar", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationLugar(String value) {
        return new JAXBElement<String>(_CarReservationLugar_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "nombre", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationNombre(String value) {
        return new JAXBElement<String>(_CarReservationNombre_QNAME, String.class, CarReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/CarServices.Models", name = "telefono", scope = CarReservation.class)
    public JAXBElement<String> createCarReservationTelefono(String value) {
        return new JAXBElement<String>(_CarReservationTelefono_QNAME, String.class, CarReservation.class, value);
    }

}
