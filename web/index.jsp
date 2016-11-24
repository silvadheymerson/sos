<%-- 
    Document   : index
    Created on : 03/11/2016, 11:11:37
    Author     : SEE
--%>

<jsp:include page="layout_inicio.jsp" />
<li class="active"><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Servi�os</a></li>
                    
                    <li><a href="sobre.jsp">Sobre</a></li>  
                    <li><a href="contatos.jsp">Contatos</a></li>
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

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active" style="background-image: url(img/slides/1.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="carousel-content centered">
                                    <center>  <h2 class="animation animated-item-1">Bem Vindo ao OfertAki</h2> </center>
                                <center>    <p class="animation animated-item-2">Site para ofertas e buscas de servi�os em geral.</p></center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
                <div class="item" style="background-image: url(img/slides/2.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="carousel-content centered">
                                <center>   <h2 class="animation animated-item-1"> Avaliac�o do Profissional </h2> </center>
                               <center>   <p class="animation animated-item-2">Antes de contratar, vo�� pode avaliar o curriculum do profissional e ver a nota de seus clientes.</p></center>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
                <div class="item" style="background-image: url(img/slides/3.jpg)">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="carousel-content centered">
                                    <h2 class="animation animated-item-1">Varios servi�os disponiveis</h2>
                                    <p class="animation animated-item-2">Manuten��o de Computadores, Mec�nico , Diaristas , Moda e Beleza e Etc.  </p>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="icon-angle-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="icon-angle-right"></i>
        </a>
    </section><!--/#main-slider-->

	
		<!-- Call to Action Bar -->
	    <div class="section section-dark">
			<div class="container">
				<div class="row">
                                        <div class="col-md-3">
						<div class="calltoaction-wrapper">
                                                    <h3>Buscar por servi�os</h3> 
                                                        
						</div>
                                        </div>
					<div class="col-md-2">
						<div class="calltoaction-wrapper">
                                                   <a href="buscarservicos.jsp" class="btn btn-orange">Clique aqui</a> 
                                                        
						</div>
                                        </div>
                                        <div class="col-md-2">
						<div class="calltoaction-wrapper">
                                                    <h3>Ou</h3> 
                                                        
						</div>
                                        </div>
                                        <div class="col-md-3">
						<div class="calltoaction-wrapper">
							
                                                        <h3>Anuncie seu servi�o</h3> 
						</div>
					</div>
                                        <div class="col-md-2">
						<div class="calltoaction-wrapper">
							
                                                        <a href="cadastroservicos.jsp" class="btn btn-orange">Clique aqui</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Call to Action Bar -->


		<!-- Services -->
        <div class="section section-white">
	        <div class="container">
	        	<div class="row">
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<i class="icon-home"></i>
		        			<h3>Atendimento Domiciliar</h3>
		        			<p>J� pensou em conseguir resolver seu problema sem sair de casa? Aqui realizamos seu pedido, nossos profissionais fazem esse atendimento. </p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<i class="icon-briefcase"></i>
		        			<h3>Servi�os Especializado</h3>
		        			<p>Profissionais capacitado e com experi�ncia, vo�� antes de contratar pode analisar o seu curriculum e as avalia��es de seus clientes.</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<i class="icon-calendar"></i>
		        			<h3>Agendamento de Servi�o</h3>
		        			<p>Fa�a seu agendamento com o tecnico, ou especifique na hora de cadastrar o servi�o que vc est� precisando, e vamos solicitar os atendentes.</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        	</div>
	        </div>
	    </div>
	    <!-- End Services -->










<jsp:include page="layout_final.jsp" />