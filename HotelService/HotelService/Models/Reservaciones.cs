//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotelService.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reservaciones
    {
        public int Id_Reservacion { get; set; }
        public Nullable<int> Id_Hospedaje { get; set; }
        public Nullable<int> Id_Cliente { get; set; }
        public string FechaEntrada { get; set; }
        public string FechaSalida { get; set; }
        public Nullable<int> Cant_Huespedes { get; set; }
        public Nullable<int> CostoTotal { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
    }
}
