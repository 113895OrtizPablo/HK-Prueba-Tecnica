using ConsultaPoliza.Servicio;
using ConsultaPoliza.Servicio.Interfaz;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ConsultaPoliza
{
    public partial class Proyecto : Form
    {
        IServicio servicio;
        public Proyecto(FabricaDeServicios fabrica)
        {
            InitializeComponent();
            servicio = fabrica.CrearServicio();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            //Acà iba a  a llamar al metodo servicio q iba usar el txtID.text como parametro e iba a aimpactar contra
            //una entidad dao q iba a estar en la carpeta datos
        }
    }
}
