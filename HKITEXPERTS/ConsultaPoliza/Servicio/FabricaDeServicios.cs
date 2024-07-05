using ConsultaPoliza.Servicio.Interfaz;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Servicio
{
    public abstract class FabricaDeServicios
    {

        public abstract IServicio CrearServicio();
    }
}
