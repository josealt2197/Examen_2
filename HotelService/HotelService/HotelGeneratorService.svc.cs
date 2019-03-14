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

        public Table InsertClient(int id, string fullname, string mail, string phone, string date, string pass)
        {
            Table table = new Table();

            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                table.Id = id;
                table.Nombre = fullname;
                table.Correo = mail;
                table.Telefono = phone;
                table.FechaNac = date;
                table.Contraseña = pass;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.Table.Add(table);
                dc.SaveChanges();
            }

            return null;
        }

        public Reservaciones InsertReservation(int id_hospedaje, int id_cliente, string nombre, string apellido, string telefono, string correo, string entrada, string salida, int cantidad, int costo)
        {
            Reservaciones reservation = new Reservaciones();

            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                reservation.Id_Hospedaje = id_hospedaje;
                reservation.Id_Cliente = id_cliente;
                reservation.Nombre = nombre;
                reservation.Apellido = apellido;
                reservation.Telefono = telefono;
                reservation.Correo = correo;
                reservation.FechaEntrada = entrada;
                reservation.FechaSalida = salida;
                reservation.Cant_Huespedes = cantidad;
                reservation.CostoTotal = costo;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.Reservaciones.Add(reservation);
                dc.SaveChanges();
            }

            return null;
        }

        public Table UpdateClient(int id, string fullname, string mail, string phone)
        {
            Table table = new Table();

            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                var v = dc.Table.Where(a => a.Id == id).FirstOrDefault();

                if (v != null)
                {
                    v.Id = id;
                    v.Nombre = fullname;
                    v.Correo = mail;
                    v.Telefono = phone;
                    dc.Configuration.ValidateOnSaveEnabled = false;
                    dc.SaveChanges();
                }
                else
                {
                    throw new Exception("Error al actualizar");
                }
            }

            return null;
        }

        public List<Hotel> SelectHotels()
        {
            List<Hotel> list = new List<Hotel>();
            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                var v = dc.Hotel.ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        list.Add(item);
                    }

                }
                else
                {
                    throw new Exception("Error al intentar traer los registros");
                }

            }
            return list;
        } 

        public int DeleteClient(int id)
        {
            int res = 0;

            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                var v = dc.Table.Single(a => a.Id == id);
                if (v != null)
                {
                    dc.Table.Remove(v);
                    dc.SaveChanges();
                    res = 1;
                }
                else
                {
                    throw new Exception("Error en borrar");
                }

            }

            return res;
        }

        public List<Table> SearchClient(int id)
        {
            List<Table> list = new List<Table>();

            using (HotelEntitiesEntities dc = new HotelEntitiesEntities())
            {
                var v = dc.Table.Where(a => a.Id == id).ToList();
                if (v != null)
                {
                    foreach (var item in v)
                    {
                        list.Add(item);
                    }
                }
                else
                {
                    throw new Exception("Error en intentar filtrar el registro");
                }

            }
            return list;
        }

    }
}