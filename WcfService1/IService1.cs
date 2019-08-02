using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfService1
{
	// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
	[ServiceContract]
	public interface IService1
	{

		[OperationContract]
		int RegistrarCliente(int comuna, int tipoUsuario, string nombre, string rut, string calle, string numeroCalle, string correo, string contraseña);

		[OperationContract]
		bool ValidarUsuario(string correo, string password);

		[OperationContract]
		int DevolverIdTipoUsuario(string correo);


	}


}
