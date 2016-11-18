<%-- 
    Document   : servicos
    Created on : 04/11/2016, 09:11:47
    Author     : SEE
--%>


<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li  class="active" ><a href="servicos.jsp">Serviços</a></li>
                    
                    <li><a href="sobre.jsp">Sobre</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Perfil<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="listar_usuario.jsp">Editar Perfil</a></li>
                            <li><a href="meus_servicos">Meus Serviços</a></li>
                            <li><a href="email.jsp">Emails</a></li>
                           <li><a href="trocar_senha.jsp">Trocar Senha</a></li>
                            
                        </ul>
                    </li>
                    <li class="dropdown">
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
						<h1>Serviços Disponiveis</h1>
					</div>
				</div>
			</div>
		</div>
		
		
        <div class="section">
	    	<div class="container">
				<div class="row">
				<div class="col-sm-12">
						<h3>Enconte os melhores profissionais aqui </h3>
						<p>
						Se esta procurando servirços de qualidade, aqui temos os melhores serviços para você ou sua empresa.  	 
						</p>
					
					</div>
				</div>
			</div>
		</div>		
        
        <div class="section">
	    	<div class="container">
				<div class="row">
			
			<ul class="grid cs-style-2">
	        	<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/4.jpg" alt="img04">
						<figcaption>
							<h3>Beleza</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
	        	</div>	
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/1.jpg" alt="img01">
						<figcaption>
							<h3>Informatica</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/2.jpg" alt="img02">
						<figcaption>
							<h3>Mecânico</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/5.jpg" alt="img05">
						<figcaption>
							<h3>Fotografo</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/3.jpg" alt="img03">
						<figcaption>
							<h3>Domestica</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/6.jpg" alt="img06">
						<figcaption>
							<h3>Pedreiro</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
				</div>
                                <div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/9.jpg" alt="img09">
						<figcaption>
							<h3>Outros serviços</h3>
							<span>Escolha um profissional</span>
							<a href="portfolio-item.html">Clique Aqui</a>
						</figcaption>
					</figure>
				</div>
			</ul>

				
				</div>
				
				<ul class="pager">
				  <li><a href="#">Voltar</a></li>
				  <li><a href="#">Proximo</a></li>
				</ul>
				
			</div>
		</div>

    <jsp:include page="layout_final.jsp" />