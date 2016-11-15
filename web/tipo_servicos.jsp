<%@page import="modelo.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="controle.TipoImpl"%>



<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li  class="active" ><a href="servicos.jsp">Serviços</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="#">Serviços Ofertados</a></li>
                            <li><a href="#">Emails</a></li>
                            <li><a href="#">Profissionais</a></li>
                            
                        </ul>
                    </li>
                    <li><a href="login.jsp">Fazer Login</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->
                <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Tipos de Serviços</h1>
					</div>
				</div>
			</div>
		</div>
                <%
                    TipoImpl tipoImpl = new TipoImpl ();
                    List <Tipo> list = tipoImpl.getListAll();
                    
                    %>
                    
    
    <div class="row">
        <div class="col-lg-3"></div>
		<div class="col-lg-6">
			<div class="login-panel panel panel-default">
                                
				<div class="panel-heading">Novo Serviço<h4><div style="float:right; font-size: 80%; position: relative; top:-15px" ></div> </h4></div>
                                
				<div class="panel-body">
                                        <form role="form" action="tipoServico" method="POST">
						<fieldset>
							<div class="form-group">
								<input class="form-control" name="nome" type="text">
							</div>
							
                                                    <button type="submit" class="btn btn-primary">Cadastrar</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
                <div class="col-lg-3"></div>
    </div><!-- /.row -->
    <div class="row">
        <div class="col-lg-3"></div>    
    <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Servicos
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Tipo de Serviço</th>
                                            <th></th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <%for (Tipo t : list){ %>
                                        <tr>
                                            <td><%=t.getId()%></td>
                                            <td><%=t.getNome()%></td>
                                            <td></td>
                                            <td>
                                            <a class="btn btn-warning btn-xs" href="alterarusuario.jsp?id=<%= t.getId()%>">Editar</a>
                                            <a class="btn btn-danger btn-xs"  href="excluirTipoServicos?id=<%=t.getId()%>">Excluir</a>
                                            </td>
                                        </tr>
                               <% }     %>    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
    </div>
        <div class="col-lg-3"></div>    
    </div>
    
    
    <jsp:include page="layout_final.jsp" />