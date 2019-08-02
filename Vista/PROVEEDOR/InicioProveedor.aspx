<%@ Page Title="" Language="C#" MasterPageFile="~/PROVEEDOR/PaginaMaestraProveedor.Master" AutoEventWireup="true" CodeBehind="InicioProveedor.aspx.cs" Inherits="Vista.PROVEEDOR.InicioProveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="page-wrapper">
		<!-- PAGE CONTAINER-->
		<div class="page-container">

			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<!-- DATA TABLE -->
								<h3 class="title-5 m-b-35">Productos que puedes vender</h3>
								<div class="table-data__tool">
									<div class="table-data__tool-left">
										<input class="au-input au-input--xl" type="text" name="search" placeholder="Filtrar por nombre del producto" />
										<button class="au-btn-filter">
											<i class="zmdi zmdi-filter-list"></i>Filtrar
										</button>
									</div>

								</div>
								<div class="table-responsive table-responsive-data2">

									<table class="table table-data2">
										<thead>
											<tr>
												<th class="text-center">ID producto</th>
												<th class="text-center">Nombre</th>
												<th class="text-center">Tipo de producto</th>
												<th class="text-center">Stock</th>
												<th class="text-center">Unidad de medida</th>
												<th class="text-center">Opciones</th>
											</tr>
										</thead>
										<tbody>
											<asp:Repeater ID="Repeater1" runat="server">
												<ItemTemplate>
													<tr class="tr-shadow">
														<td class="text-center"><%#DataBinder.Eval(Container.DataItem,"idProducto")%></td>
														<td class="text-center"><%#DataBinder.Eval(Container.DataItem,"idTipoProducto")%></td>
														<td class="text-center"><%#DataBinder.Eval(Container.DataItem,"idProducto")%></td>
														<td class="text-center"></td>
														<td class="text-center"></td>
														<td class="text-center">
															<div class="table-data-feature">
																<button class="item" data-toggle="tooltip" data-placement="top" title="Agregar producto para vender">
																	<i class="zmdi zmdi-eye"></i>
																</button>
															</div>
														</td>
													</tr>
												</ItemTemplate>
											</asp:Repeater>

											<tr class="spacer"></tr>


										</tbody>
									</table>
								</div>
								<!-- END DATA TABLE -->
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
	</div>
</asp:Content>
