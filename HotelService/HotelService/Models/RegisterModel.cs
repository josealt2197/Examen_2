using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace HotelService.Models
{
    public class RegisterModel
    {
        [DataType(DataType.Text)]
        public string Id { get; set; }

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