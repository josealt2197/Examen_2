
package model;

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
 * generated in the model package. 
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

    private final static QName _Table_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Table");
    private final static QName _Reservaciones_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Reservaciones");
    private final static QName _ArrayOfHotel_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "ArrayOfHotel");
    private final static QName _Hotel_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Hotel");
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
    private final static QName _InsertClientFullname_QNAME = new QName("http://tempuri.org/", "fullname");
    private final static QName _InsertClientMail_QNAME = new QName("http://tempuri.org/", "mail");
    private final static QName _InsertClientPhone_QNAME = new QName("http://tempuri.org/", "phone");
    private final static QName _InsertClientFecha_QNAME = new QName("http://tempuri.org/", "fecha");
    private final static QName _InsertClientPass_QNAME = new QName("http://tempuri.org/", "pass");
    private final static QName _InsertClientResponseInsertClientResult_QNAME = new QName("http://tempuri.org/", "InsertClientResult");
    private final static QName _InsertReservationNombre_QNAME = new QName("http://tempuri.org/", "nombre");
    private final static QName _InsertReservationApellido_QNAME = new QName("http://tempuri.org/", "apellido");
    private final static QName _InsertReservationTelefono_QNAME = new QName("http://tempuri.org/", "telefono");
    private final static QName _InsertReservationCorreo_QNAME = new QName("http://tempuri.org/", "correo");
    private final static QName _InsertReservationEntrada_QNAME = new QName("http://tempuri.org/", "entrada");
    private final static QName _InsertReservationSalida_QNAME = new QName("http://tempuri.org/", "salida");
    private final static QName _InsertReservationResponseInsertReservationResult_QNAME = new QName("http://tempuri.org/", "InsertReservationResult");
    private final static QName _UpdateClientResponseUpdateClientResult_QNAME = new QName("http://tempuri.org/", "UpdateClientResult");
    private final static QName _SelectHotelsResponseSelectHotelsResult_QNAME = new QName("http://tempuri.org/", "SelectHotelsResult");
    private final static QName _SearchHotelResponseSearchHotelResult_QNAME = new QName("http://tempuri.org/", "SearchHotelResult");
    private final static QName _HotelDescripcionHos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "DescripcionHos");
    private final static QName _HotelHoraEntradaHos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "HoraEntradaHos");
    private final static QName _HotelHoraSalidaHos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "HoraSalidaHos");
    private final static QName _HotelImagenDetail_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "ImagenDetail");
    private final static QName _HotelImagenHos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "ImagenHos");
    private final static QName _HotelNombreHos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "NombreHos");
    private final static QName _HotelProvinciaHos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "ProvinciaHos");
    private final static QName _HotelServiciosIncluidos_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "ServiciosIncluidos");
    private final static QName _HotelTipo_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Tipo");
    private final static QName _HotelUbicacionExacta_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "UbicacionExacta");
    private final static QName _ReservacionesApellido_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Apellido");
    private final static QName _ReservacionesCantHuespedes_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Cant_Huespedes");
    private final static QName _ReservacionesCorreo_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Correo");
    private final static QName _ReservacionesCostoTotal_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "CostoTotal");
    private final static QName _ReservacionesFechaEntrada_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "FechaEntrada");
    private final static QName _ReservacionesFechaSalida_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "FechaSalida");
    private final static QName _ReservacionesIdCliente_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Id_Cliente");
    private final static QName _ReservacionesIdHospedaje_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Id_Hospedaje");
    private final static QName _ReservacionesNombre_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Nombre");
    private final static QName _ReservacionesTelefono_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Telefono");
    private final static QName _TableContraseña_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "Contrase\u00f1a");
    private final static QName _TableFechaNac_QNAME = new QName("http://schemas.datacontract.org/2004/07/HotelService.Models", "FechaNac");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: model
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertClient }
     * 
     */
    public InsertClient createInsertClient() {
        return new InsertClient();
    }

    /**
     * Create an instance of {@link InsertClientResponse }
     * 
     */
    public InsertClientResponse createInsertClientResponse() {
        return new InsertClientResponse();
    }

    /**
     * Create an instance of {@link Table }
     * 
     */
    public Table createTable() {
        return new Table();
    }

    /**
     * Create an instance of {@link InsertReservation }
     * 
     */
    public InsertReservation createInsertReservation() {
        return new InsertReservation();
    }

    /**
     * Create an instance of {@link InsertReservationResponse }
     * 
     */
    public InsertReservationResponse createInsertReservationResponse() {
        return new InsertReservationResponse();
    }

    /**
     * Create an instance of {@link Reservaciones }
     * 
     */
    public Reservaciones createReservaciones() {
        return new Reservaciones();
    }

    /**
     * Create an instance of {@link UpdateClient }
     * 
     */
    public UpdateClient createUpdateClient() {
        return new UpdateClient();
    }

    /**
     * Create an instance of {@link UpdateClientResponse }
     * 
     */
    public UpdateClientResponse createUpdateClientResponse() {
        return new UpdateClientResponse();
    }

    /**
     * Create an instance of {@link SelectHotels }
     * 
     */
    public SelectHotels createSelectHotels() {
        return new SelectHotels();
    }

    /**
     * Create an instance of {@link SelectHotelsResponse }
     * 
     */
    public SelectHotelsResponse createSelectHotelsResponse() {
        return new SelectHotelsResponse();
    }

    /**
     * Create an instance of {@link ArrayOfHotel }
     * 
     */
    public ArrayOfHotel createArrayOfHotel() {
        return new ArrayOfHotel();
    }

    /**
     * Create an instance of {@link DeleteClient }
     * 
     */
    public DeleteClient createDeleteClient() {
        return new DeleteClient();
    }

    /**
     * Create an instance of {@link DeleteClientResponse }
     * 
     */
    public DeleteClientResponse createDeleteClientResponse() {
        return new DeleteClientResponse();
    }

    /**
     * Create an instance of {@link SearchHotel }
     * 
     */
    public SearchHotel createSearchHotel() {
        return new SearchHotel();
    }

    /**
     * Create an instance of {@link SearchHotelResponse }
     * 
     */
    public SearchHotelResponse createSearchHotelResponse() {
        return new SearchHotelResponse();
    }

    /**
     * Create an instance of {@link Hotel }
     * 
     */
    public Hotel createHotel() {
        return new Hotel();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Table }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Table")
    public JAXBElement<Table> createTable(Table value) {
        return new JAXBElement<Table>(_Table_QNAME, Table.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Reservaciones }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Reservaciones")
    public JAXBElement<Reservaciones> createReservaciones(Reservaciones value) {
        return new JAXBElement<Reservaciones>(_Reservaciones_QNAME, Reservaciones.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfHotel }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "ArrayOfHotel")
    public JAXBElement<ArrayOfHotel> createArrayOfHotel(ArrayOfHotel value) {
        return new JAXBElement<ArrayOfHotel>(_ArrayOfHotel_QNAME, ArrayOfHotel.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hotel }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Hotel")
    public JAXBElement<Hotel> createHotel(Hotel value) {
        return new JAXBElement<Hotel>(_Hotel_QNAME, Hotel.class, null, value);
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
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "fullname", scope = InsertClient.class)
    public JAXBElement<String> createInsertClientFullname(String value) {
        return new JAXBElement<String>(_InsertClientFullname_QNAME, String.class, InsertClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "mail", scope = InsertClient.class)
    public JAXBElement<String> createInsertClientMail(String value) {
        return new JAXBElement<String>(_InsertClientMail_QNAME, String.class, InsertClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "phone", scope = InsertClient.class)
    public JAXBElement<String> createInsertClientPhone(String value) {
        return new JAXBElement<String>(_InsertClientPhone_QNAME, String.class, InsertClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "fecha", scope = InsertClient.class)
    public JAXBElement<String> createInsertClientFecha(String value) {
        return new JAXBElement<String>(_InsertClientFecha_QNAME, String.class, InsertClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "pass", scope = InsertClient.class)
    public JAXBElement<String> createInsertClientPass(String value) {
        return new JAXBElement<String>(_InsertClientPass_QNAME, String.class, InsertClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Table }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "InsertClientResult", scope = InsertClientResponse.class)
    public JAXBElement<Table> createInsertClientResponseInsertClientResult(Table value) {
        return new JAXBElement<Table>(_InsertClientResponseInsertClientResult_QNAME, Table.class, InsertClientResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "nombre", scope = InsertReservation.class)
    public JAXBElement<String> createInsertReservationNombre(String value) {
        return new JAXBElement<String>(_InsertReservationNombre_QNAME, String.class, InsertReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "apellido", scope = InsertReservation.class)
    public JAXBElement<String> createInsertReservationApellido(String value) {
        return new JAXBElement<String>(_InsertReservationApellido_QNAME, String.class, InsertReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telefono", scope = InsertReservation.class)
    public JAXBElement<String> createInsertReservationTelefono(String value) {
        return new JAXBElement<String>(_InsertReservationTelefono_QNAME, String.class, InsertReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "correo", scope = InsertReservation.class)
    public JAXBElement<String> createInsertReservationCorreo(String value) {
        return new JAXBElement<String>(_InsertReservationCorreo_QNAME, String.class, InsertReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "entrada", scope = InsertReservation.class)
    public JAXBElement<String> createInsertReservationEntrada(String value) {
        return new JAXBElement<String>(_InsertReservationEntrada_QNAME, String.class, InsertReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "salida", scope = InsertReservation.class)
    public JAXBElement<String> createInsertReservationSalida(String value) {
        return new JAXBElement<String>(_InsertReservationSalida_QNAME, String.class, InsertReservation.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Reservaciones }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "InsertReservationResult", scope = InsertReservationResponse.class)
    public JAXBElement<Reservaciones> createInsertReservationResponseInsertReservationResult(Reservaciones value) {
        return new JAXBElement<Reservaciones>(_InsertReservationResponseInsertReservationResult_QNAME, Reservaciones.class, InsertReservationResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "fullname", scope = UpdateClient.class)
    public JAXBElement<String> createUpdateClientFullname(String value) {
        return new JAXBElement<String>(_InsertClientFullname_QNAME, String.class, UpdateClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "mail", scope = UpdateClient.class)
    public JAXBElement<String> createUpdateClientMail(String value) {
        return new JAXBElement<String>(_InsertClientMail_QNAME, String.class, UpdateClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "phone", scope = UpdateClient.class)
    public JAXBElement<String> createUpdateClientPhone(String value) {
        return new JAXBElement<String>(_InsertClientPhone_QNAME, String.class, UpdateClient.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Table }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "UpdateClientResult", scope = UpdateClientResponse.class)
    public JAXBElement<Table> createUpdateClientResponseUpdateClientResult(Table value) {
        return new JAXBElement<Table>(_UpdateClientResponseUpdateClientResult_QNAME, Table.class, UpdateClientResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfHotel }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SelectHotelsResult", scope = SelectHotelsResponse.class)
    public JAXBElement<ArrayOfHotel> createSelectHotelsResponseSelectHotelsResult(ArrayOfHotel value) {
        return new JAXBElement<ArrayOfHotel>(_SelectHotelsResponseSelectHotelsResult_QNAME, ArrayOfHotel.class, SelectHotelsResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfHotel }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "SearchHotelResult", scope = SearchHotelResponse.class)
    public JAXBElement<ArrayOfHotel> createSearchHotelResponseSearchHotelResult(ArrayOfHotel value) {
        return new JAXBElement<ArrayOfHotel>(_SearchHotelResponseSearchHotelResult_QNAME, ArrayOfHotel.class, SearchHotelResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "DescripcionHos", scope = Hotel.class)
    public JAXBElement<String> createHotelDescripcionHos(String value) {
        return new JAXBElement<String>(_HotelDescripcionHos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "HoraEntradaHos", scope = Hotel.class)
    public JAXBElement<String> createHotelHoraEntradaHos(String value) {
        return new JAXBElement<String>(_HotelHoraEntradaHos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "HoraSalidaHos", scope = Hotel.class)
    public JAXBElement<String> createHotelHoraSalidaHos(String value) {
        return new JAXBElement<String>(_HotelHoraSalidaHos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "ImagenDetail", scope = Hotel.class)
    public JAXBElement<String> createHotelImagenDetail(String value) {
        return new JAXBElement<String>(_HotelImagenDetail_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "ImagenHos", scope = Hotel.class)
    public JAXBElement<String> createHotelImagenHos(String value) {
        return new JAXBElement<String>(_HotelImagenHos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "NombreHos", scope = Hotel.class)
    public JAXBElement<String> createHotelNombreHos(String value) {
        return new JAXBElement<String>(_HotelNombreHos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "ProvinciaHos", scope = Hotel.class)
    public JAXBElement<String> createHotelProvinciaHos(String value) {
        return new JAXBElement<String>(_HotelProvinciaHos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "ServiciosIncluidos", scope = Hotel.class)
    public JAXBElement<String> createHotelServiciosIncluidos(String value) {
        return new JAXBElement<String>(_HotelServiciosIncluidos_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Tipo", scope = Hotel.class)
    public JAXBElement<String> createHotelTipo(String value) {
        return new JAXBElement<String>(_HotelTipo_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "UbicacionExacta", scope = Hotel.class)
    public JAXBElement<String> createHotelUbicacionExacta(String value) {
        return new JAXBElement<String>(_HotelUbicacionExacta_QNAME, String.class, Hotel.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Apellido", scope = Reservaciones.class)
    public JAXBElement<String> createReservacionesApellido(String value) {
        return new JAXBElement<String>(_ReservacionesApellido_QNAME, String.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Cant_Huespedes", scope = Reservaciones.class)
    public JAXBElement<Integer> createReservacionesCantHuespedes(Integer value) {
        return new JAXBElement<Integer>(_ReservacionesCantHuespedes_QNAME, Integer.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Correo", scope = Reservaciones.class)
    public JAXBElement<String> createReservacionesCorreo(String value) {
        return new JAXBElement<String>(_ReservacionesCorreo_QNAME, String.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "CostoTotal", scope = Reservaciones.class)
    public JAXBElement<Integer> createReservacionesCostoTotal(Integer value) {
        return new JAXBElement<Integer>(_ReservacionesCostoTotal_QNAME, Integer.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "FechaEntrada", scope = Reservaciones.class)
    public JAXBElement<String> createReservacionesFechaEntrada(String value) {
        return new JAXBElement<String>(_ReservacionesFechaEntrada_QNAME, String.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "FechaSalida", scope = Reservaciones.class)
    public JAXBElement<String> createReservacionesFechaSalida(String value) {
        return new JAXBElement<String>(_ReservacionesFechaSalida_QNAME, String.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Id_Cliente", scope = Reservaciones.class)
    public JAXBElement<Integer> createReservacionesIdCliente(Integer value) {
        return new JAXBElement<Integer>(_ReservacionesIdCliente_QNAME, Integer.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Integer }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Id_Hospedaje", scope = Reservaciones.class)
    public JAXBElement<Integer> createReservacionesIdHospedaje(Integer value) {
        return new JAXBElement<Integer>(_ReservacionesIdHospedaje_QNAME, Integer.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Nombre", scope = Reservaciones.class)
    public JAXBElement<String> createReservacionesNombre(String value) {
        return new JAXBElement<String>(_ReservacionesNombre_QNAME, String.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Telefono", scope = Reservaciones.class)
    public JAXBElement<String> createReservacionesTelefono(String value) {
        return new JAXBElement<String>(_ReservacionesTelefono_QNAME, String.class, Reservaciones.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Contrase\u00f1a", scope = Table.class)
    public JAXBElement<String> createTableContraseña(String value) {
        return new JAXBElement<String>(_TableContraseña_QNAME, String.class, Table.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Correo", scope = Table.class)
    public JAXBElement<String> createTableCorreo(String value) {
        return new JAXBElement<String>(_ReservacionesCorreo_QNAME, String.class, Table.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "FechaNac", scope = Table.class)
    public JAXBElement<String> createTableFechaNac(String value) {
        return new JAXBElement<String>(_TableFechaNac_QNAME, String.class, Table.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Nombre", scope = Table.class)
    public JAXBElement<String> createTableNombre(String value) {
        return new JAXBElement<String>(_ReservacionesNombre_QNAME, String.class, Table.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://schemas.datacontract.org/2004/07/HotelService.Models", name = "Telefono", scope = Table.class)
    public JAXBElement<String> createTableTelefono(String value) {
        return new JAXBElement<String>(_ReservacionesTelefono_QNAME, String.class, Table.class, value);
    }

}
