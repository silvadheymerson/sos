<%-- 
    Document   : cadastrousuario
    Created on : 03/11/2016, 14:50:28
    Author     : SEE
--%>

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
                            <li><a href="servico_ofertado.jsp">Serviços Ofertados</a></li>
                            <li><a href="listar_email.jsp">Emails</a></li>
                            <li><a href="listar_profissionais.jsp">Profissionais</a></li>
                            
                        </ul>
                    </li>
                    <li class="active" ><a href="login.jsp">Fazer Login</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->
    
                <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Cadastro </h1>
					</div>
				</div>
			</div>
                </div><br><br><br>

<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
                                    <form id="formExemplo" method="POST" action="cadastrarUsuario" data-toggle="validator" role="form" >
									  <div class="form-group">
										<label for="textNome" class="control-label">Nome</label>
                                                                                <input id="textNome" name="nome" class="form-control"  type="text">
									  </div>
									  
									  <div class="form-group">
										<label for="inputEmail" class="control-label">Email</label>
										<input id="inputEmail" name="email" class="form-control"  type="email">
									  </div>
									  
									  <div class="form-group">
										<label for="inputPassword" class="control-label">Senha</label>
                                                                                <input type="password" name="senha1" class="form-control" id="inputPassword" >
									  </div>
									  
									  <div class="form-group">
										<label for="inputConfirm" class="control-label">Confirme a Senha</label>
										<input type="password" name="senha2" class="form-control" id="inputConfirm">
									  </div>
									  
									  
									  
									  <button type="submit" class="btn btn-success">Confirmar</button>
                                                                            <a href="login.jsp" class="btn btn-danger">Voltar</a> 
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	






<jsp:include page="layout_final.jsp" />