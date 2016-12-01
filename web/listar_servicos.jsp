<%@page import="modelo.Busca"%>
<%@page import="java.util.List"%>
<%@page import="controle.BuscaImpl"%>


<%@page import="modelo.Tipo"%>
<%@page import="controle.TipoImpl"%>





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
                            <li><a href="email.jsp">Emails</a></li>
                           <li><a href="trocar_senha.jsp">Trocar Senha</a></li>
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li   class="active" ><a href="servico_ofertado.jsp">Serviços Ofertados</a></li>
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
                                            <h1>Serviços procurados pelos úsuarios</h1>
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
                        
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>N°</th>
                                            <th>Nome</th>
                                            <th>Email</th>
                                            <th>Telefone</th>
                                            <th>Tpo de Serviço</th>
                                            <th>Data</th>
                                            <th>Descricao</th>
                                            
                                            <th>Ações</th>
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
                                            <a class="btn btn-warning btn-xs" data-toggle="modal" data-target="#setores<%=t.getId()%>">Visualizar</a>
                                           
                                            </td>
                                        </tr>
                                        
                                        <!--MODAL -->
                                        <div class="row">
                    <div class="col-lg-12">
                        <div class="modal fade" id="setores<%=t.getId()%>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="H2">INFORMAÇÕES</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form name="formsetores" id="formsetores" action="php/setor/salvar.php" method="POST">
                                                <div class="form-group">
                                                    <label>Nome</label>
                                                    <p><%=t.getNome()%></p>
                                                    
                                                </div>
                                                <div class=" form-group">
                                                    <label>Email</label>
                                                    <p><%=t.getEmail()%></p>
                                                </div>
                                                <div class=" form-group">
                                                    <label>Telefone</label>
                                                    <p><%=t.getTelefone()%></p>
                                                </div>
                                                <div class=" form-group">
                                                    <label>Servico</label>
                                                    <p><%=t.getServico()%></p>
                                                </div>
                                                <div class=" form-group">
                                                    <label>Prazo</label>
                                                    <p><%=t.getPrazo()%></p>
                                                </div>
                                                <div class=" form-group">
                                                    <label>Prazo</label>
                                                    <p><%=t.getPrazo()%></p>
                                                </div>
                                                
                                                <div class=" form-group">
                                                    <label>Estado</label>
                                                    <p><%=t.getEstado()%></p>
                                                </div>
                                                
                                                <div class=" form-group">
                                                    <label>Cidade</label>
                                                    <p><%=t.getCidade()%></p>
                                                </div>
                                                
                                                <div class=" form-group">
                                                    <label>Bairro</label>
                                                    <p><%=t.getBairro()%></p>
                                                </div>
                                                
                                                
                                             </form>    
                                        </div>
                                        <div class="panel-body">
                        
                                    </div>
                                                 
                                           
                                    </div>
                                        
                                </div>
                        </div>
                    </div>
</div>

    </div>
        
    </div>
                                        
                                        
                                        
                               <% }     %>    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                                    
                    
                    
                    
    
    
        <jsp:include page="layout_final.jsp"/>