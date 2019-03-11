using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using HotelService.Models;

namespace HotelService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "HotelGeneratorService" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione HotelGeneratorService.svc o HotelGeneratorService.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class HotelGeneratorService : IHotelGeneratorService
    {

        public Table InsertClient(int id, string name, string last, string mail, string phone)
        {
            Table table = new Table();

            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                table.Id = id;
                table.Nombre = name;
                table.Apellidos = last;
                table.Correo = mail;
                table.Telefono = phone;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.Tables.Add(table);
                dc.SaveChanges();
            }

            return null;
        }
    }
}