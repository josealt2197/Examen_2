using HotelService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace HotelService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IHotelGeneratorService" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IHotelGeneratorService
    {
        [OperationContract]
        Table InsertClient(int id, string fullname, string mail, string phone, string fecha, string pass);

        [OperationContract]
        Table UpdateClient(int id, string fullname, string mail, string phone);

        [OperationContract]
        List<Hotel> SelectHotels();

        [OperationContract]
        int DeleteClient(int id);

        [OperationContract]
        List<Table> SearchClient(int id);

    }
}
