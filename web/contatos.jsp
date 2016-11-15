<%@page import="modelo.Contatos"%>
<%@page import="java.util.List"%>
<%@page import="controle.ContatosImpl"%>


<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Serviços</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li  class="active" ><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="#">Serviços Ofertados</a></li>
                            <li><a href="#">Emails</a></li>
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
                                            <h1>Contatos</h1>
					</div>
				</div>
			</div>
                </div>
    
                <%
                    ContatosImpl contatosImpl = new ContatosImpl ();
                    List <Contatos> list = contatosImpl.getListAll();
                    
                    %>
                 <div class="section section-map">


	        		<div class="col-sm-12" style="padding:0;">
	        			<!-- Map -->
	        			<div id="contact-us-map">
							<iframe width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7859.243040623254!2d-67.8532953!3d-9.9654136!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x917f8c25f829050b%3A0x2e46e9d85145a309!2sUNINORTE+-+Uni%C3%A3o+Educacional+do+Norte!5e0!3m2!1spt-PT!2sbr!4v1478719663660"></iframe>
							<br />
							<small>
								<a href="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7859.243040623254!2d-67.8532953!3d-9.9654136!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x917f8c25f829050b%3A0x2e46e9d85145a309!2sUNINORTE+-+Uni%C3%A3o+Educacional+do+Norte!5e0!3m2!1spt-PT!2sbr!4v1478719663660"></a>
							</small>
							</iframe>
	        			</div>
	        			<!-- End Map -->
					</div>


                </div>

            <div class="section">
	    	<div class="container">
	        	<div class="row">
					<h3>Entre em contato conosco</h3>
					</hr>
	        		<div class="col-sm-6">
	        			<!-- Contact Info -->
	        			<p class="contact-us-details">
	        				<b>Endereço:</b> Rua Hungria, 200 - Jardim Europa  <br/>
	        				<b>Telefone:</b> (68)3225-5585<br/>
	        				<b>Celular</b> (68)99986-8971<br/>
	        				<b>Email:</b> <a href="#">ofertaki@hotmail.com</a>
	        			</p>
	        			<!-- End Contact Info -->
	        		</div>
	        		<div class="col-sm-6">
                                    
                                    <form role="form" action="contatos" method="POST">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input id="inputEmail" type="email" class="form-control" placeholder="Digite seu Email">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Mensagem</label>
                                            <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Enviar</button>
                                    </form>

	        		</div>
	        	</div>
	    	</div>
	    </div>
                
                
                
                
                
                
                
                
                
<jsp:include page="layout_final.jsp" />                
                