<%@page import="modelo.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="controle.TipoImpl"%>


<%@page import="controle.BuscaImpl"%>
<%@page import="modelo.Busca" %>
<jsp:useBean id="buscaDao" class="controle.BuscaImpl"/>


<%
                    TipoImpl tipoImpl = new TipoImpl ();
                    List <Tipo> list = tipoImpl.getListAll();
                    
                    %>


<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li  class="active"><a href="services.html">Serviços</a></li>
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
                            <li><a href="servico_ofertado.jsp">Serviços Ofertados</a></li>
                            <li><a href="listar_email.jsp">Emails</a></li>
                            <li><a href="listar_profissionais.jsp">Profissionais</a></li>
                            
                        </ul>
                    </li>
                    <li ><a href="login.jsp">Fazer Login</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->
    
                <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
                                            <h1>O que vc está precisando?</h1>
					</div>
				</div>
			</div>
                </div><br><br><br>
                <%
                                        int id = 0;
                                        Busca busca = new Busca();
                                        if (request.getParameter("id") != null) {
                                            id = Integer.valueOf(request.getParameter("id"));
                                            busca = new BuscaImpl().findById(id);
                                        }
                                    %>
                                    
                <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Preencha esse formulario</div>
				<div class="panel-body">
                                    <form id="formExemplo" method="POST" action="cadastrarBusca" data-toggle="validator" role="form">
                                                                            <div class=" form-group">
                                                                                <label for="textNome">Tipo de Serviço que vc está precisando</label>
                                                                                    <select id="selectbasic" name="servico" class="form-control">

                                                                                       <%for (Tipo t : list){ %>
                                                                                       
                                                                                            <option value="<%=t.getId()%>"><%=t.getNome()%></option>
                                                                                        
                                                                                        <% } %>

                                                                                    </select>
                                                                            </div>
                                                                            <!--<div class="form-group">
                                                                                
										<label for="textNome" class="control-label">CEP</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://www.buscacep.correios.com.br" target="_blank">Não lembra seu CEP?</a>
                                                                                <input id="textNome" name="cep" class="form-control"  type="text" placeholder="00000-000">
                                                                            </div>-->
                                                                            <div class="form-group">
                                                                            <label>CEP</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://www.buscacep.correios.com.br" target="_blank">Não lembra seu CEP?</a>
                                                                            <input name="cep" type="text" value="<%=busca.getCep()%>" class="form-control" id="cep" onblur="pesquisacep(this.value);">
                                                                          </div>
                                                                          <div class="form-group">
                                                                            <label>Rua</label>
                                                                            <input name="rua"  type="text" value="<%=busca.getRua()%>" id="rua" class="form-control" >
                                                                          </div>
                                                                          <div class="form-group">
                                                                            <label>Numero</label>
                                                                            <input name="numero"  type="text" value="<%=busca.getNumero()%>" id="numero" class="form-control" >
                                                                          </div>  
                                                                          <div class="form-group ">
                                                                            <label>Bairro</label>
                                                                            <input name="bairro" type="text" id="bairro" value="<%=busca.getBairro()%>" class="form-control" >
                                                                          </div>
                                                                            <div class=" form-group">
                                                                                <label>Cidade</label>
                                                                                <input name="cidade" type="text" id="cidade" value="<%=busca.getCidade()%>" class="form-control" >
                                                                            </div>

                                                                            <div class=" form-group">
                                                                                <label for="exampleInputEmail1">Estado</label>
                                                                                <input name="uf" type="text" id="uf" class="form-control"  value="<%=busca.getEstado()%>" >
                                                                            </div>

                                                                            
                                                                            <div class="form-group">
										<label for="textNome" class="control-label">Nome</label>
                                                                                <input id="textNome" name="nome" value="<%=busca.getNome()%>" class="form-control"  type="text">
                                                                            </div>
									  
                                                                            <div class="form-group">
										<label for="inputEmail" class="control-label">Email</label>
                                                                                <input id="inputEmail" name="email" value="<%=busca.getEmail()%>" class="form-control"  type="email">
                                                                            </div>
                                                                            <div class="form-group">
										<label for="textTelefone" class="control-label">Telefone</label>
                                                                                <input id="textTelefone"  name="telefone" value="<%=busca.getTelefone()%>" class="form-control"  type="text" placeholder="(00)0000-0000">
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="textNome">Prazo de atendimento</label>
                                                                                <select id="selectbasic" name="prazo" class="form-control">
                                                                                    <option value="">Selecione uma opção</option>
                                                                                    <option value="O quanto antes possivel">O quanto antes possivel</option>
                                                                                    <option value="Nos proximos 30 dias">Nos proximos 30 dias</option>
                                                                                    <option value="Nos proximos 3 meses">Nos proximos 3 meses</option>
                                                                                    <option value="Não tenho certeza">Não tenho certeza</option>
                                                                                    
                                                                                    
                                                                                </select>
                                                                                
                                                                            </div> 
                                                                            
                                                                            <div class="form-group">
                                                                                <label>Descrição do que você precisa</label>
                                                                                <textarea class="form-control" value="<%=busca.getDescricao()%>" name="descricao" rows="3"></textarea>
                                                                            </div>            
                                                                                        
									 
									  
									  
									  
									  
									  
									  <button type="submit" class="btn btn-primary">Confirmar</button>
                                                                            <a class="btn btn-danger"href="index.jsp">Voltar</a>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
                
                
                
                
                
                
                
                
                
<jsp:include page="layout_final.jsp" />                
                