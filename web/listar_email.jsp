<%@page import="modelo.Contato"%>
<%@page import="java.util.List"%>
<%@page import="controle.ContatoImpl"%>



<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Serviços</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown" class="active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="#">Serviços Ofertados</a></li>
                            <li><a href="listar_email.jsp">Emails</a></li>
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
						<h1>Listar de Usuarios</h1>
					</div>
				</div>
			</div>
		</div>
                <%
                    ContatoImpl contatoImpl = new ContatoImpl ();
                    List <Contato> list = contatoImpl.getListAll();
                    
                    %>
                    
    
    
    <div class="row">
        <div class="col-lg-2"></div>    
    <div class="col-lg-8">
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
                                            <th>Email</th>
                                            <th>Mensagem</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <%for (Contato t : list){ %>
                                        <tr>
                                            <td><%=t.getId()%></td>
                                            <td><%=t.getEmail()%></td>
                                            <td><%=t.getTexto()%></td>
                                            <td>
                                            <a class="btn btn-warning btn-xs" href="resposta_email.jsp?id=<%= t.getId()%>">Responder</a>
                                           
                                            </td>
                                        </tr>
                               <% }     %>    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
    </div>
        <div class="col-lg-2"></div>    
    </div>
    
    
    <jsp:include page="layout_final.jsp" />