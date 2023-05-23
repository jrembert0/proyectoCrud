using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoCrud.Models
    //Los modelos son clases que realizan la representacin de la tabla en la base de datos
{
    public class Contacto
    {
        public int IdContacto { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Telefono { get; set; }
        public string Correo { get; set; }
    }
}