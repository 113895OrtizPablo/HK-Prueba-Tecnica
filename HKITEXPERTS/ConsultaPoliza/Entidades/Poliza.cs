using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Entidades
{
    public class Poliza
    {
        public int Id { get; set; }

        public Producto SuProducto { get; set; }

        public string Estado { get; set; }

        public List<Asegurado> LAsegurados { get; set; }


        public Poliza(int id, Producto p, string estado)
        {
            Id=id;
            SuProducto=p;
            Estado=estado;
            LAsegurados=new List<Asegurado>();
        }

        public Poliza()
        {
            LAsegurados = new List<Asegurado>();
        }


        public void CargarAsegurado(Asegurado asegurado)
        {
            LAsegurados.Add(asegurado);
        }

    }
}
