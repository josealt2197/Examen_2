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
    
    public partial class Hotel
    {
        public int Id { get; set; }
        public string NombreHos { get; set; }
        public string Tipo { get; set; }
        public int CantidadHuespedes { get; set; }
        public string UbicacionExacta { get; set; }
        public string ProvinciaHos { get; set; }
        public string ServiciosIncluidos { get; set; }
        public int Precio { get; set; }
        public string ImagenHos { get; set; }
        public string HoraEntradaHos { get; set; }
        public string HoraSalidaHos { get; set; }
        public string DescripcionHos { get; set; }
    }
}