<%-- 
    Document   : servicos
    Created on : 03/11/2016, 17:07:18
    Author     : SEE
--%>



<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li class="active"><a href="buscarservicos.jsp">Serviços</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li><a href="login.jsp">Fazer Login</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->
    
                <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
                                            <h1>Cadastre seu Serviço</h1>
					</div>
				</div>
			</div>
                </div><br><br><br>
                
            <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Preencha esse formulario</div>
				<div class="panel-body">
					<form id="formExemplo" data-toggle="validator" role="form">
                                                                            <div class=" form-group">
                                                                                <label for="textNome">Tipo de Serviço</label>
                                                                                    <select id="selectbasic" name="selectbasic" class="form-control">

                                                                                        <option value="">Escolha uma opção</option>
                                                                                        

                                                                                    </select>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                
										<label for="textNome" class="control-label">CEP</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="http://www.buscacep.correios.com.br" target="_blank">Não lembra seu CEP?</a>
                                                                                <input id="textNome" class="form-control"  type="text" placeholder="00000-000">
                                                                            </div>
                                                                            <div class="form-group">
										<label for="textNome" class="control-label">Nome</label>
										<input id="textNome" class="form-control"  type="text">
                                                                            </div>
									  
                                                                            <div class="form-group">
										<label for="inputEmail" class="control-label">Email</label>
										<input id="inputEmail" class="form-control"  type="email">
                                                                            </div>
                                                                            <div class="form-group">
										<label for="textTelefone" class="control-label">Telefone</label>
                                                                                <input id="textTelefone" class="form-control"  type="text" placeholder="(00)0000-0000">
                                                                            </div>
									 
									  
									  
									  
									  
									  
									  <button type="submit" class="btn btn-primary">Confirmar</button>
                                                                            <a class="btn btn-danger"href="index.jsp">Voltar</a>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
                
                
                
                
                
                
                
                
<jsp:include page="layout_final.jsp" />                
                