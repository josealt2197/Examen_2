//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CarServices.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CarReservation
    {
        public int Id { get; set; }
        public int idVehiculo { get; set; }
        public int idCliente { get; set; }
        public string nombre { get; set; }
        public string apellidos { get; set; }
        public string telefono { get; set; }
        public string correo { get; set; }
        public string horaentrada { get; set; }
        public string horasalida { get; set; }
        public string fechaentrada { get; set; }
        public string fechasalida { get; set; }
        public string lugar { get; set; }
    }
}
