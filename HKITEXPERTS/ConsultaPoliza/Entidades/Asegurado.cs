using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Entidades
{
    public class Asegurado
    {
        public int Id { get; set; }

        public int DNI { get; set; }

        public string Nombre { get; set; }

        public int Edad { get; set; }

        public string Estado { get; set; }


        public Asegurado(int id, int dni, string nombre, string estado)
        {
            Id = id;
            DNI = dni;
            Nombre = nombre;
            Estado = estado;
        }

        public Asegurado()
        {
            
        }

    }
}
