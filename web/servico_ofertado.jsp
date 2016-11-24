<%@page import="modelo.Busca"%>
<%@page import="java.util.List"%>
<%@page import="controle.BuscaImpl"%>


<%@page import="modelo.Tipo"%>
<%@page import="controle.TipoImpl"%>





<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Servi�os</a></li>
                    
                    <li><a href="sobre.jsp">Sobre</a></li>  
                    <li  class="active" ><a href="contatos.jsp">Contatos</a></li> 
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Perfil<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="listar_usuario.jsp">Editar Perfil</a></li>
                            <li><a href="meus_servicos">Meus Servi�os</a></li>
                            <li><a href="email.jsp">Emails</a></li>
                           <li><a href="trocar_senha.jsp">Trocar Senha</a></li>
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administra��o<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Servi�o</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="servico_ofertado.jsp">Servi�os Ofertados</a></li>
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
                                            <h1>Listagem de Servi�os procurados pelos �suarios</h1>
					</div>
				</div>
			</div>
                </div>
                <%
                    BuscaImpl buscaImpl = new BuscaImpl ();
                    List <Busca> list = buscaImpl.getListAll();
                    
                    %>
                    
                    
                    <div class="row">
         
    <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Servi�os
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>N� Protocolo</th>
                                            <th>Nome</th>
                                            <th>Email</th>
                                            <th>Telefone</th>
                                            <th>Tpo de Servi�o</th>
                                            <th>Data</th>
                                            <th>Descricao</th>
                                            
                                            <th>A��es</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                    <%for (Busca t : list){ %>
                                        <tr>
                                            <td><%=t.getId()%></td>
                                            <td><%=t.getNome()%></td>
                                            <td><%=t.getEmail()%></td>
                                            <td><%=t.getTelefone()%></td>
                                            <td><%=t.getServico()%></td>
                                            <td><%=t.getData()%></td>
                                            <td><%=t.getDescricao()%></td>
                                            
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
        
    </div>
                    
                    
                    
    
    
        <jsp:include page="layout_final.jsp" />