using CarServices.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace CarServices
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICarService" in both code and config file together.
    [ServiceContract]
    public interface ICarService
    {

        [OperationContract]
        [WebInvoke(Method = "POST", UriTemplate = "/insert_reservation", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        CarReservation InsertCarReservation(int id_hospedaje, int id_cliente, string nombre, string apellido, string telefono, string correo, string horaentrada, string horasalida, string fechaentrada, string fechasalida, string lugar);

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/select_cars", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        List<Car> SelectCar();

        [OperationContract]
        [WebInvoke(Method = "GET", UriTemplate = "/select_car", RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json, BodyStyle = WebMessageBodyStyle.Wrapped)]
        List<Car> SearchCar(int id);
    }
}
