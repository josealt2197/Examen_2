using HotelService.Models;
using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace HotelService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IHotelGeneratorService" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IHotelGeneratorService
    {
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/insert_client", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        Table InsertClient(int id, string fullname, string mail, string phone, string fecha, string pass);

        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/insert_reservation", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        Reservaciones InsertReservation(int id_hospedaje, int id_cliente, string nombre, string apellido, string telefono, string correo, string entrada, string salida, int cantidad, int costo);

        [OperationContract]
        Table UpdateClient(int id, string fullname, string mail, string phone);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/select_hotels", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        List<Hotel> SelectHotels();

        [OperationContract]
        int DeleteClient(int id);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/select_hotel", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        List<Hotel> SearchHotel(int id);

    }
}
