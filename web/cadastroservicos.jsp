<%@page import="modelo.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="controle.TipoImpl"%>


<%
                    TipoImpl tipoImpl = new TipoImpl ();
                    List <Tipo> list = tipoImpl.getListAll();
                    
                    %>

<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="buscarservicos.jsp">Servi�os</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown" class="active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administra��o<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Servi�o</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="#">Servi�os Ofertados</a></li>
                            <li><a href="listar_email.jsp">Emails</a></li>
                            <li class="active"><a href="listar_profissional.jsp">Profissionais</a></li>
                            
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
                                            <h1>Cadastre seu Servi�o</h1>
					</div>
				</div>
			</div>
                </div><br><br><br>
                
                
            <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Preencha esse formulario</div>
				<div class="panel-body">
                                    <form id="formExemplo" method="POST" action="cadastrarServico" data-toggle="validator" role="form">
                                                                            <div class=" form-group">
                                                                                <label for="textNome">Tipo de Servi�o</label>
                                                                                    <select id="selectbasic" name="servico" class="form-control">

                                                                                       <%for (Tipo t : list){ %>
                                                                                        <option value="<%=t.getId()%>"><%=t.getNome()%></option>
                                                                                        
                                                                                        <% } %>

                                                                                    </select>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                
										<label for="textNome" class="control-label">CEP</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://www.buscacep.correios.com.br" target="_blank">N�o lembra seu CEP?</a>
                                                                                <input id="textNome" name="cep" class="form-control"  type="text" placeholder="00000-000">
                                                                            </div>
                                                                            <div class="form-group">
										<label for="textNome" class="control-label">Nome</label>
                                                                                <input id="textNome" name="nome" class="form-control"  type="text">
                                                                            </div>
									  
                                                                            <div class="form-group">
										<label for="inputEmail" class="control-label">Email</label>
										<input id="inputEmail" name="email" class="form-control"  type="email">
                                                                            </div>
                                                                            <div class="form-group">
										<label for="textTelefone" class="control-label">Telefone</label>
                                                                                <input id="textTelefone"  name="telefone" class="form-control"  type="text" placeholder="(00)0000-0000">
                                                                            </div>
									 
									  
									  
									  
									  
									  
									  <button type="submit" class="btn btn-primary">Confirmar</button>
                                                                            <a class="btn btn-danger"href="index.jsp">Voltar</a>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
                
                
                
                
                
                
                
                
<jsp:include page="layout_final.jsp" />                
                