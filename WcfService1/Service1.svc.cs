using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Biblioteca;
using Biblioteca_de_negocio;

namespace WcfService1
{
	// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
	// NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
	public class Service1 : IService1
	{
		Biblioteca.DeliferiaEntities entidades = new DeliferiaEntities();
		//MÉTODOS DE USUARIOS NO REGISTRADOS.
		//Método para registrar usuarios nuevos.
		public int RegistrarCliente(int comuna, int tipoUsuario, string nombre, string rut, string calle, string numeroCalle, string correo, string contraseña)
		{
			int res = 0;
			USUARIO usuario = new USUARIO();
			usuario.idComuna = comuna;
			usuario.idTipoUsuario = tipoUsuario;
			usuario.nombre = nombre;
			usuario.rut = rut;
			usuario.calle = calle;
			usuario.numeroCalle = numeroCalle;
			usuario.correo = correo;
			usuario.contraseña = contraseña;

			entidades.USUARIO.Add(usuario);
			res = entidades.SaveChanges();

			return res;
		}

		//Método para validar usuarios
		public bool ValidarUsuario(string correo, string password)
		{
			bool res = false;
			var r = from usu in entidades.USUARIO where usu.correo == correo && usu.contraseña == password select usu;


			USUARIO encontrado = r.FirstOrDefault<USUARIO>();

			if (encontrado != null)
			{
				res = true;
			}


			return res;
		}

		public int DevolverIdTipoUsuario(string correo)
		{
			int res = 0;

			var r = from u in entidades.USUARIO where u.correo == correo select u;

			USUARIO encontrado = r.FirstOrDefault<USUARIO>();
			if (encontrado != null)
			{
				switch (encontrado.idTipoUsuario)
				{
					case 1:
						encontrado.idTipoUsuario = 1;
						res = 1;
						break;

					case 2:
						encontrado.idTipoUsuario = 2;
						res = 2;
						break;

					case 3:
						encontrado.idTipoUsuario = 3;
						res = 3;
						break;

					case 4:
						encontrado.idTipoUsuario = 4;
						res = 4;
						break;
				}
			}

			return res;
		}

		//MÉTODOS DE PROVEEDOR
		//Método que lista productos
		public List<DTOProducto> TraerProductos()
		{
			List<DTOProducto> todo = new List<DTOProducto>();
			var listarProductos = from p in entidades.PRODUCTO select p;

			foreach (PRODUCTO p in listarProductos)
			{
				DTOProducto nuevo = new DTOProducto();
				nuevo.IdProducto = p.idTipoProducto;
				nuevo.NombreProducto = p.nombreProducto;

				todo.Add(nuevo);
			}

			return todo;
		}
	}
}
