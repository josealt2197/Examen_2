using FlightService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace FlightService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IFlightService" in both code and config file together.
    [ServiceContract]
    public interface IFlightService
    {
        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/insert_reservation", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        FlightReservation InsertFlightReservation(int id_vuelo, int id_cliente, string nombre, string apellido, string telefono, string correo, int cantpasajeros, string asientos, float costototal);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/select_flights", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        List<Flight> SelectFlight();

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/select_flights", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        List<Flight> SearchFlight(int id);
    }
}
