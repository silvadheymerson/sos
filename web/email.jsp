<%@page import="modelo.Contato"%>
<%@page import="java.util.List"%>
<%@page import="controle.ContatoImpl"%>



<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Serviços</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Procurar<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="profissionais.jsp">Profissionais</a></li>
                            <li><a href="listar_servicos.jsp">Meus Serviços</a></li>
                             
                        </ul>
                    </li>
                    
                    <li><a href="sobre.jsp">Sobre</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Perfil<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="editar_perfil.jsp">Editar Perfil</a></li>
                            <li><a href="meus_servicos.jsp">Meus Serviços</a></li>
                            <li  class="active"><a href="email.jsp">Emails</a></li>
                           <li><a href="trocar_senha.jsp">Trocar Senha</a></li>
                            
                        </ul>
                    </li>
                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="servico_ofertado.jsp">Serviços Ofertados</a></li>
                            <li><a href="listar_email.jsp">Emails</a></li>
                            <li><a href="listar_profissionais.jsp">Profissionais</a></li>
                            
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
						<h1>Meus Emails</h1>
					</div>
				</div>
			</div>
		</div>
                <%
                    ContatoImpl contatoImpl = new ContatoImpl ();
                    List <Contato> list = contatoImpl.getListAll();
                    
                    %>
                    
    
    
    <div class="row">
        <div class="col-lg-1"></div>    
    <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Emails e Respostas
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            
                                            <th>Mensagem</th>
                                            <th>Resposta</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <%for (Contato t : list){ %>
                                        <tr>
                                            <td><%=t.getId()%></td>
                                            
                                            <td><%=t.getTexto()%></td>
                                             <td><%=t.getResposta()%></td>
                                            <td>
                                            <a class="btn btn-warning btn-xs" href="visualizaremail.jsp?id=<%= t.getId()%>">Visualizar</a>
                                           
                                            </td>
                                        </tr>
                               <% }     %>    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
    </div>
        <div class="col-lg-1"></div>    
    </div>
    
    
                                <jsp:include page="layout_final.jsp" />