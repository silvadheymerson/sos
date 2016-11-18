<%@page import="modelo.Servico"%>
<%@page import="java.util.List"%>
<%@page import="controle.ServicoImpl"%>


<%@page import="modelo.Tipo"%>
<%@page import="controle.TipoImpl"%>



<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Serviços</a></li>
                    <li class="dropdown"  class="active" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Perfil<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="listar_usuario.jsp">Editar Perfil</a></li>
                            <li><a href="meus_servicos">Meus Serviços</a></li>
                            <li><a href="email.jsp">Emails</a></li>
                           <li><a href="trocar_senha.jsp">Trocar Senha</a></li>
                            
                        </ul>
                    </li>
                    <li><a href="sobre.jsp">Sobre</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown" class="active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="#">Serviços Ofertados</a></li>
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
						<h1>Listar de Proffisionais</h1>
					</div>
				</div>
			</div>
		</div>
                <%
                    ServicoImpl servicoImpl = new ServicoImpl ();
                    List <Servico> list = servicoImpl.getListAll();
                    
                    %>
                    
    
    
    <div class="row">
        <div class="col-lg-1"></div>    
    <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            E-mail Recentes
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nome</th>
                                            <th>Email</th>
                                            <th>Telefone</th>
                                            <th>Tpo de Profissional</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <%for (Servico t : list){ %>
                                        <tr>
                                            <td><%=t.getId()%></td>
                                            <td><%=t.getNome()%></td>
                                            <td><%=t.getEmail()%></td>
                                            <td><%=t.getTelefone()%></td>
                                            <td><%=t.getServico()%></td>
                                            <td>
                                            <a class="btn btn-warning btn-xs" href="#">Visualizar</a>
                                           
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