using ConsultaPoliza.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Servicio.Interfaz
{
    public interface IServicio
    {
        List<Poliza> TraerPolizas(int id);

        void CambiarEstado(int id);
    }
}
