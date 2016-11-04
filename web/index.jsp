<%-- 
    Document   : index
    Created on : 03/11/2016, 11:11:37
    Author     : SEE
--%>

<jsp:include page="layout_inicio.jsp" />
<li class="active"><a href="index.jsp">Inicio</a></li>
                    <li><a href="services.html">Servi�os</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contact-us.html">Contatos</a></li>
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
					<div class="col-md-6">
						<div class="calltoaction-wrapper">
                                                    <h3>Buscar por servi�os</h3> <a href="servicos.jsp" class="btn btn-orange">Clique aqui</a> 
                                                        
						</div>
                                        </div>
                                        <div class="col-md-6">
						<div class="calltoaction-wrapper">
							
                                                        <h3>Anuciar seu servi�os</h3> <a href="servicos.jsp" class="btn btn-orange">Clique aqui</a>
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
		        			<p>Praesent rhoncus mauris ac sollicitudin vehicula. Nam fringilla turpis turpis, at posuere turpis aliquet sit amet condimentum</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<i class="icon-briefcase"></i>
		        			<h3>Servi�os Especializado</h3>
		        			<p>Suspendisse eget libero mi. Fusce ligula orci, vulputate nec elit ultrices, ornare faucibus orci. Aenean lectus sapien, vehicula</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        		<div class="col-md-4 col-sm-6">
	        			<div class="service-wrapper">
		        			<i class="icon-calendar"></i>
		        			<h3>Agendamento de Servi�o</h3>
		        			<p>Phasellus posuere et nisl ac commodo. Nulla facilisi. Sed tincidunt bibendum cursus. Aenean vulputate aliquam risus rutrum scelerisque</p>
		        			<a href="#" class="btn">Read more</a>
		        		</div>
	        		</div>
	        	</div>
	        </div>
	    </div>
	    <!-- End Services -->










<jsp:include page="layout_final.jsp" />