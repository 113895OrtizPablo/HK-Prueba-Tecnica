using ConsultaPoliza.Servicio.Interfaz;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Servicio
{
    public class FabricaDeServiciosImpl : FabricaDeServicios
    {
        public override IServicio CrearServicio()
        {
            return new ConsultaPoliza.Servicio.Implementacion.Servicio(); 
        }
    }
}
