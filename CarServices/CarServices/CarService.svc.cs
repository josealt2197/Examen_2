using CarServices.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CarServices
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CarService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select CarService.svc or CarService.svc.cs at the Solution Explorer and start debugging.
    public class CarService : ICarService
    {
        public CarReservation InsertCarReservation(int id_vehiculo, int id_cliente, string nombre, string apellido, string telefono, string correo, string horaentrada, string horasalida, string fechaentrada, string fechasalida, string lugar)
        {
            CarReservation reservation = new CarReservation();

            using (CarDBEntities dc = new CarDBEntities())
            {
                reservation.idVehiculo = id_vehiculo;
                reservation.idCliente = id_cliente;
                reservation.nombre = nombre;
                reservation.apellidos = apellido;
                reservation.telefono = telefono;
                reservation.correo = correo;
                reservation.horaentrada = horaentrada;
                reservation.horasalida = horasalida;
                reservation.fechaentrada = fechaentrada;
                reservation.fechasalida = fechasalida;
                reservation.lugar = lugar;
                
                dc.Configuration.ValidateOnSaveEnabled = false;
                dc.CarReservations.Add(reservation);
                dc.SaveChanges();
            }

            return null;
        }

        public List<Car> SearchCar(int id)
        {
             List<Car> list = new List<Car>();

            using (CarDBEntities dc = new CarDBEntities())
            {
                var v = dc.Cars.Where(a => a.Id == id).ToList();
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

        public List<Car> SelectCar()
        {
            List<Car> list = new List<Car>();
            using (CarDBEntities dc = new CarDBEntities())
            {
                var v = dc.Cars.ToList();
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
