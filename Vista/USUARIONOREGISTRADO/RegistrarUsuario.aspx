<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="WebApplicationDeliferia.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Registro | Deliferia 🍉</title>
	<!-- Bootstrap Core CSS -->
	<link href="Estilo2/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

	

	<!-- Default Fonts (IMPORTANT: Delete these if you are using a different body style!) -->
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,600,500,700,800,900' rel='stylesheet' type='text/css' />

	<!-- Modern Style Fonts (IMPORTANT: Delete these unless you are using body.modern!) -->
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Cardo:400,400italic,700' rel='stylesheet' type='text/css' />

	<!-- Vintage Style Fonts (IMPORTANT: Delete these unless you are using body.vintage!) -->
	<link href='https://fonts.googleapis.com/css?family=Sanchez:400italic,400' rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Cardo:400,400italic,700' rel='stylesheet' type='text/css' />

	<!-- Plugin CSS -->
	<link href="Estilo2/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/formstone/background.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css" />
	<link href="Estilo2/vendor/device-mockups/device-mockups.min.css" rel="stylesheet" type="text/css" />

	<!-- Vitality Theme CSS -->
	<!-- INSTRUCTIONS: Uncomment the color scheme you want to use. Red is chosen by default. -->
	<!-- <link href="Estilo2/css/vitality-red.css" rel="stylesheet" type="text/css" /> -->
	<!-- <link href="css/vitality-aqua.css" rel="stylesheet" type="text/css"> -->
	<!-- <link href="css/vitality-blue.css" rel="stylesheet" type="text/css"> -->
	<link href="Estilo2/css/vitality-red.css" rel="stylesheet" type="text/css"/> 
	<!-- <link href="css/vitality-orange.css" rel="stylesheet" type="text/css"> -->
	<!-- <link href="css/vitality-pink.css" rel="stylesheet" type="text/css"> -->
	<!-- <link href="css/vitality-purple.css" rel="stylesheet" type="text/css"> -->
	<!-- <link href="css/vitality-tan.css" rel="stylesheet" type="text/css"> -->
	<!-- <link href="css/vitality-turquoise.css" rel="stylesheet" type="text/css"> -->
	<!-- <link href="css/vitality-yellow.css" rel="stylesheet" type="text/css"> -->

	<!-- IE8 support for HTML5 elements and media queries -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<!-- NAVBAR -->
	<nav class="navbar navbar-inverse" style="margin-bottom: 0px;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">Deliferia</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="Index.aspx">🏠 Inicio</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="RegistrarUsuario.aspx">📖 Registrarse</a></li>
				<li><a href="Login.aspx">👤 Inicio de sesión</a></li>

			</ul>
		</div>
	</nav>
	<br />
	<br />
	<form class="form-group" runat="server">
		<div class="container wow fadeIn">

			<div class="col-lg-12 text-center">
				<h2>Registro de usuario</h2>
				<br />
				<br />

			</div>
			<br />

			<div class="row content-row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Correo electrónico 📧:</label>
							<asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Escriba aquí su correo electrónico 📧." MaxLength="100" TextMode="Email"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreo" ErrorMessage="El campo correo no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Primer nombre 👤:</label>
							<asp:TextBox ID="txtPrimerNombre" runat="server" CssClass="form-control" placeholder="Escriba aquí su primer nombre 👤." MaxLength="50" CausesValidation="False"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrimerNombre" ErrorMessage="El campo primer nombre no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<br/>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="El campo nombre sólo debe contener letras." ControlToValidate="txtPrimerNombre" ValidationExpression="^[a-zA-Z ]*$" ValidationGroup="1"></asp:RegularExpressionValidator>
							
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Rut 👤:</label>
							<asp:TextBox ID="txtRut" runat="server" CssClass="form-control" placeholder="Escriba aquí su rut 👤." oninput="checkRut(this)" MaxLength="10"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRut" ErrorMessage="El campo correo no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Calle 🏡:</label>
							<asp:TextBox ID="txtCalle" runat="server" CssClass="form-control" placeholder="Escriba aquí la calle de su domicilio 🏡."></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCalle" ErrorMessage="El campo nombre de su calle no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Número 🚪:</label>
							<asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" placeholder="Escriba aqui el número de su casa 🚪."></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNumero" ErrorMessage="El campo número de casa no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Contraseña 🔑:</label>
							<asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control" placeholder="Escriba aqui su contraseña 🔑." TextMode="Password"></asp:TextBox>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtContraseña" ErrorMessage="El campo contraseña no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Comuna 🗺️:</label>
							<asp:DropDownList ID="DdlComuna" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="idComuna" style="width:300px; height:40px"></asp:DropDownList>
							
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DeliferiaConnectionString %>" SelectCommand="SELECT * FROM [COMUNA]"></asp:SqlDataSource>
							
							<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DdlComuna" ErrorMessage="El campo comuna no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>

				<div class="col-lg-8 col-lg-offset-2">
					<div class="row control-group">
						<div class="form-group col-xs-12 floating-label-form-group controls">
							<label>Tipo de usuario 👥:</label>
							<asp:DropDownList ID="DdlTipoUsuario" runat="server"  DataTextField="tipoUsuario" DataValueField="idTipoUsuario" DataSourceID="SqlDataSource2" style="width:300px; height:40px;"></asp:DropDownList>
							<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DeliferiaConnectionString %>" SelectCommand="SELECT idTipoUsuario, tipoUsuario FROM TIPO_USUARIO WHERE (idTipoUsuario IN (1, 4))"></asp:SqlDataSource>
							<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DdlTipoUsuario" ErrorMessage="El campo tipo usuario no debe quedar vacío." ForeColor="Red" ValidationGroup="1" />
							<p class="help-block text-danger"></p>
						</div>
					</div>
				</div>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<div class="row" >
					<div class="form-group col-xs-12" style="padding-top:40px;">
						<center><asp:Button ID="BtnRegistrarse" runat="server" Text="Registrarse" CssClass="btn btn-success"  ValidationGroup="1" OnClick="BtnRegistrarse_Click" /></center>
					</div>
				</div>
			</div>
		</div>
	</form>
	<br/>
	<br/>
	<hr style="background-color:red; max-width:1500px;" />
	<!-- FOOTER -->
	<footer class="footer" id="contactenos">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-4 contact-details">
					<h4 style="color:black"><i class="fa fa-phone" style="color:black"></i>  Llamenos a</h4>
					<p style="color:black">+569 53895892</p>
				</div>
				<div class="col-md-4 contact-details">
					<h4 style="color:black"><i class="fa fa-map-marker" style="color:black"></i>  Visitenos</h4>
					<p style="color:black">
						Providencia
                       <br />
						Santiago
					</p>
				</div>
				<div class="col-md-4 contact-details">
					<h4 style="color:black"><i class="fa fa-envelope" style="color:black"></i>  Correo electrónico</h4>
					<p style="color:black">
						<a href="mailto:mail@example.com" style="color:black">Deliferia@gmail.com</a>
					</p>
				</div>
			</div>
			<div class="row social">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a href="#" style="color:black"><i class="fa fa-facebook fa-fw fa-2x" style="color:black"></i></a>
						</li>
						<li><a href="#" style="color:black"><i class="fa fa-twitter fa-fw fa-2x" style="color:black"></i></a>
						</li>
						<li><a href="#" style="color:black"><i class="fa fa-linkedin fa-fw fa-2x" style="color:black"></i></a>
						</li>
					</ul>
				</div>
			</div>
			<div class="row copyright">
				<div class="col-lg-12">
					<p class="small" style="color:black">&copy; 2018 Deliferia</p>
				</div>
			</div>
		</div>
	</footer>

	<!--------------------------------------------------------------------------------------------------------------------->
	<!-- Core Scripts -->
	<script src="Estilo2/vendor/jquery/jquery.min.js"></script>
	<script src="Estilo2/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="Estilo2/js/classie.js"></script>
	<script src="Estilo2/js/cbpAnimatedHeader.js"></script>

	<!-- Plugin Scripts -->
	<script src="Estilo2/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="Estilo2/vendor/owl-carousel/owl.carousel.js"></script>
	<script src="Estilo2/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="Estilo2/vendor/formstone/core.js"></script>
	<script src="Estilo2/vendor/formstone/transition.js"></script>
	<script src="Estilo2/vendor/formstone/background.js"></script>
	<script src="Estilo2/vendor/mixitup/jquery.mixitup.js"></script>
	<script src="Estilo2/vendor/wow/wow.min.js"></script>

	<!-- Contact Form Scripts -->
	<script src="Estilo2/js/contact_me.js"></script>
	<script src="Estilo2/js/jqBootstrapValidation.js"></script>

	<!-- Vitality Theme Scripts -->
	<script src="Estilo2/js/vitality.js"></script>

	<!-- Validar rut -->
	<script src="Estilo2/js/rut.js"></script>
</body>
</html>
