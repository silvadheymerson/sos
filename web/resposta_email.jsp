<%@page import="controle.ContatoImpl"%>
<%@page import="modelo.Contato" %>
<jsp:useBean id="contatoDao" class="controle.ContatoImpl"/>





<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
                    <li><a href="servicos.jsp">Serviços</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li> 
                    <li><a href="contatos.jsp">Contatos</a></li>
                    <li class="dropdown"   >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administração<i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="tipo_servicos.jsp">Tipo de Serviço</a></li>
                            <li><a href="listar_usuario.jsp">Usuarios</a></li>
                            <li><a href="#">Serviços Ofertados</a></li>
                            <li class="active"><a href="listar_email.jsp">Emails</a></li>
                            <li><a href="listar_profissional.jsp">Profissionais</a></li>
                            
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
						<h1>Responder E-mail </h1>
					</div>
				</div>
			</div>
                </div><br><br><br>
                                    <%
                                        int id = 0;
                                        Contato contato = new Contato();
                                        if (request.getParameter("id") != null) {
                                            id = Integer.valueOf(request.getParameter("id"));
                                            contato = new ContatoImpl().findById(id);
                                        }
                                    %>

<div class="row">
    <div class="col-md-1"></div>
                <div class="col-sm-10">
                    <!-- Aqui dentro dessa div vai as respostas do sistema -->
                    <h2> Email recebido </h2>
                    <hr>
                    
                    <br>
                    Email: <%=contato.getEmail()%>
                    <p></p>
                    Assunto: <%=contato.getTexto()%><br>
                    
                    
                    <hr>
                   
                </div>
    <div class="col-md-1"></div> 
</div>
    <div class='row'>
        <div class="col-md-1"></div> 
		<div class='col-md-10'>
                    
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Responder Email</div>
				<div class="panel-body">
                                    <form role="form" action="cadastroContato" method="POST">
                                        
                                        <div class="form-group">
                                            <label>Mensagem</label>
                                            <textarea class="form-control" name="resposta" rows="3"></textarea>
                                        </div>
                                        <input type="hidden" name="id" value="<%=id%>"/>
                                        <button type="submit" class="btn btn-primary">Enviar</button>
                                    </form>
				</div>
			</div>
		</div><!-- /.col-->
          <div class="col-md-1"></div>       
	</div><!-- /.row -->	






<jsp:include page="layout_final.jsp" />