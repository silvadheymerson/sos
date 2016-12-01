
<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li ><a href="servicos.jsp">Serviços</a></li>
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
                            <li   class="active"><a href="editar_perfil.jsp">Editar Perfil</a></li>
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
                    <li><a href="login.jsp">Fazer Login</a></li>
                </ul>
            </div>
        </div>
    </header><!--/header-->

<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Atualizar Perfil</h1>
					</div>
				</div>
			</div>
		</div>
		    
    
    <div class="row">
        <div class="col-md-1"></div>
   <div class="col-md-10">    
<form  name="formfuncionario" id="formfuncionario" action="" method="POST">
    <div class="row">
          <div class="form-group col-md-6">
                <label for="exampleInputEmail1">Nome</label>
                <input type="text" name="nome" class="form-control" value="">
          </div>
          <div class="form-group col-md-3">
                <label for="exampleInputEmail1">CPF</label>
                <input type="text" name="cpf" class="form-control" value="">
          </div>
          <div class="form-group col-md-3">
                <label for="exampleInputEmail1">RG</label>
                <input type="text" name="rg" class="form-control" value="" >
          </div>
    </div>
    <div class="row">
        <div class="form-group col-md-6">
            <label for="exampleInputEmail1">E-mail</label>
            <input type="email"  name="email" class="form-control" value="">
        </div>



 
    
    
              <div class="form-group col-md-6">
                <label for="exampleInputEmail1">Data de Nascimento</label>
                <input type="date" name="data_nascimento" class="form-control" value="" >
              </div>
    </div>
   
   
    <hr/>
    
    
   
    <div class="row">
      <div class="form-group col-md-3">
        <label>CEP</label>
        <input name="cep" type="text" value="" class="form-control" id="cep" onblur="pesquisacep(this.value);">
      </div>
      <div class="form-group col-md-4">
        <label>Rua</label>
        <input name="rua"  type="text" value="" id="rua" class="form-control">
      </div>
      <div class="form-group col-md-2">
        <label>Numero</label>
        <input name="numero"  type="text" value="" id="numero" class="form-control">
      </div>  
      <div class="form-group col-md-3">
        <label>Bairro</label>
        <input name="bairro" type="text" id="bairro" value="" class="form-control" >
      </div>

    </div>
    
    <div class="row">
            <div class=" form-group col-md-4">
                <label>Cidade</label>
                <input name="cidade" type="text" id="cidade" value="" class="form-control" >
            </div>

            <div class=" form-group col-md-4">
                <label for="exampleInputEmail1">Estado</label>
                <input name="uf" type="text" id="uf" class="form-control"  value="">
            </div>

          

     
    </div>
    <div class="row">

        <div class="form-group col-md-12">
            <label for="exampleInputEmail1">Complemento</label>
            <input type="text" name="complemento" value="" class="form-control" id="exampleInputEmail1" >
        </div>
    </div>



 <hr />
  <div class="row">
        <div class="col-md-12">
            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="index.php?pg=home" class="btn btn-default">Cancelar</a>
        </div>
    </div>
    

</form><br><br>
   </div>
    
      <div class="col-md-1"></div>
    
    </div>       
                
                
<jsp:include page="layout_final.jsp" />                
                