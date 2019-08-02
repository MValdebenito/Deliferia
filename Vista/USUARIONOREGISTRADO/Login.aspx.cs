using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationDeliferia
{
	public partial class Index : System.Web.UI.Page
	{
		WcfService1.Service1 servicio = new WcfService1.Service1();
		protected void BtnIniciarSesion_Click(object sender, EventArgs e)
		{
			if (BtnIniciarSesion!=null)
			{
				if (servicio.ValidarUsuario(txtCorreo.Text, txtContraseña.Text))
				{
					switch (servicio.DevolverIdTipoUsuario(txtCorreo.Text))
					{
						case 1:
							//Response.Redirect();
							break;
						case 2:
							//Response.Redirect();
							break;
						case 3:
							//Response.Redirect();
							break;
						case 4:
							Response.Redirect("~/PROVEEDOR/InicioProveedor.aspx");
							break;
					}
				}
			}
			
		}
	}
}