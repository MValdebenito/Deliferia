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
    
    public partial class UNIDAD_DE_MEDIDA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UNIDAD_DE_MEDIDA()
        {
            this.PRODUCTO_PROVEEDOR = new HashSet<PRODUCTO_PROVEEDOR>();
        }
    
        public int idUnidadDeMedida { get; set; }
        public string nombreUnidadDeMedida { get; set; }
        public string valorUnidadDeMedida { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PRODUCTO_PROVEEDOR> PRODUCTO_PROVEEDOR { get; set; }
    }
}