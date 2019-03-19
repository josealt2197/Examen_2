using FlightService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace FlightService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "FlightService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select FlightService.svc or FlightService.svc.cs at the Solution Explorer and start debugging.
    public class FlightService : IFlightService
    {

        public FlightReservation InsertFlightReservation(int id_vuelo, int id_cliente, string nombre, string apellido, string telefono, string correo, int cantpasajeros, string asientos, float costototal)
        {
            FlightReservation reservation = new FlightReservation();

            using (FlightDBEntities dc = new FlightDBEntities())
            {
                reservation.idVuelo= id_vuelo;
                reservation.idCliente = id_cliente;
                reservation.nombre = nombre;
                reservation.apellidos = apellido;
                reservation.telefono = telefono;
                reservation.correo = correo;
                reservation.cantpasajeros = cantpasajeros;
                reservation.asientos = asientos;
                reservation.asientos = asientos;
                reservation.costototal = costototal;

                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.FlightReservations.Add(reservation);
                dc.SaveChanges();
            }

            return null;
        }

        public List<Flight> SearchCar(int id)
        {
            throw new NotImplementedException();
        }

        public List<Flight> SearchFlight(int id)
        {
            List<Flight> list = new List<Flight>();

            using (FlightDBEntities dc = new FlightDBEntities())
            {
                var v = dc.Flights.Where(a => a.Id == id).ToList();
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

        public List<Flight> SelectCar()
        {
            throw new NotImplementedException();
        }

        public List<Flight> SelectFlight()
        {
            List<Flight> list = new List<Flight>();
            using (FlightDBEntities dc = new FlightDBEntities())
            {
                var v = dc.Flights.ToList();
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
    }
}
