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
    using System.ComponentModel.DataAnnotations;

    public partial class Table
    {
        [DataType(DataType.Text)]
        public int Id { get; set; }

        [DataType(DataType.Text)]
        public string Nombre { get; set; }

        [DataType(DataType.Text)]
        public string Apellidos { get; set; }

        [DataType(DataType.Text)]
        public string Correo { get; set; }

        [DataType(DataType.Text)]
        public string Telefono { get; set; }
    }
}
