<%@page import="controle.UsuarioImpl"%>
<%@page import="modelo.Usuario" %>
<jsp:useBean id="usuarioDao" class="controle.UsuarioImpl"/>





<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Serviços</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown"  class="active" >
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
						<h1>Alterações </h1>
					</div>
				</div>
			</div>
                </div><br><br><br>

<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Alterar Usuario</div>
				<div class="panel-body">
                                    <form id="formExemplo" method="POST" action="cadastrarUsuario" data-toggle="validator" role="form" >
                                    <%
                                        int id = 0;
                                        Usuario usuario = new Usuario();
                                        if (request.getParameter("id") != null) {
                                            id = Integer.valueOf(request.getParameter("id"));
                                            usuario = new UsuarioImpl().findById(id);
                                        }
                                    %>
									  <div class="form-group">
										<label for="textNome" class="control-label">Nome</label>
                                                                                <input id="textNome" name="nome" class="form-control"  type="text" value="<%=usuario.getNome()%>">
									  </div>
									  
									  <div class="form-group">
										<label for="inputEmail" class="control-label">Email</label>
                                                                                <input id="inputEmail" name="email" class="form-control"  type="email" value="<%=usuario.getEmail()%>">
									  </div>
                                        
									  <button type="submit" class="btn btn-success">Confirmar</button>
                                                                            <a href="listar_usuario.jsp" class="btn btn-danger">Voltar</a> 
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	






<jsp:include page="layout_final.jsp" />