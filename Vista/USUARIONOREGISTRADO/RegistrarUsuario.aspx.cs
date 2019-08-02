using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace WebApplicationDeliferia
{
	public partial class RegistrarUsuario : System.Web.UI.Page
	{
		WcfService1.Service1 servicios = new WcfService1.Service1();
		protected void Page_Load(object sender, EventArgs e)
		{
			
			
		}

		protected void BtnRegistrarse_Click(object sender, EventArgs e)
		{
			if (BtnRegistrarse!=null)
			{
				//int comuna, int tipoUsuario, string nombre, string rut, string calle, 
				//string numeroCalle, string correo, string contraseña
				servicios.RegistrarCliente(int.Parse(DdlComuna.SelectedValue),int.Parse( DdlTipoUsuario.SelectedValue), 
				txtPrimerNombre.Text, txtRut.Text, txtCalle.Text, txtNumero.Text, txtCorreo.Text, txtContraseña.Text);
			}
		}
	}
}