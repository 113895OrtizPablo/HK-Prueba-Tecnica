using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Entidades
{
    public class Producto
    {

        public int Id { get; set; }

        public string Nombre { get; set; }

        public TipoProducto Tipo { get; set; }


        public Producto(int id, string nombre, TipoProducto tipo)
        {
            Id = id;
            Nombre = nombre;
            Tipo = tipo;
        }

        public Producto()
        {
            
        }
    }
}
