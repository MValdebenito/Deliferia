//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Biblioteca
{
    using System;
    using System.Collections.Generic;
    
    public partial class DETALLE_COMPRA
    {
        public int idDetalle { get; set; }
        public int idProducto { get; set; }
        public int idCompra { get; set; }
        public int precio { get; set; }
        public int cantidad { get; set; }
    
        public virtual COMPRA COMPRA { get; set; }
        public virtual PRODUCTO PRODUCTO { get; set; }
    }
}
