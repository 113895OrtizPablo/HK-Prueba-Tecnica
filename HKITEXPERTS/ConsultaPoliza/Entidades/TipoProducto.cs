﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsultaPoliza.Entidades
{
    public class TipoProducto
    {
        public int Id { get; set; }

        public string Nombre { get; set; }

        public TipoProducto(int id, string nombre)
        {
            Id=id;
            Nombre=nombre;
        }

        public TipoProducto()
        {
            
        }
    }
}
