<%-- 
    Document   : sobre
    Created on : 18/11/2016, 09:01:50
    Author     : Dhey
--%>

<jsp:include page="layout_inicio.jsp" />
<li ><a href="index.jsp">Inicio</a></li>
<li><a href="servicos.jsp">Serviços</a></li>
                    
                    <li  class="active" ><a href="sobre.jsp">Sobre</a></li> 
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
						<h1>Quem Somos</h1>
					</div>
				</div>
			</div>
		</div>
		
        <div class="section">
	    	<div class="container">
				<div class="row">
				<div class="col-sm-12">
						<h3>Historia </h3>
						<p>
						Criado em 2016, o OFERTAKI - é um SERVIÇO DE UTILIDADE PÚBLICA e atua como um classificado online de vagas de emprego, em todo o Brasil.

Desenvolvido pelos alunos - Dheymerson Silva e Fabricio André, para a conclusão da disciplina de Java Web, o Ofertaki é um site confiável que busca contribuir socialmente com o mercado de trabalho, promovendo o contato direto entre empregador e trabalhador.               
						</p>
                                                <br>
                                                <h3>Missão </h3>
						<p>
						Queremos ser o ambiente onde todos possam encontram um trabalho ou oferta um serviço,

encontram informação, oferecendo os melhores trabalhos e serviços, alinhado ao melhor atendimento acompanhando as melhores práticas essenciais para uma sociedade.               
						</p>
                                                <br>
                                                <h3>Visão </h3>
						<p>
						Tornar o Ofertaki em uma referência em ofertas de serviços aos nossos clientes e amigos e tornar-se o melhor site em oferta de serviços do pais em até 2 (dois) anos, prestando
                                                
serviços para a melhor satisfação do trabalhado quanto a do empregador também proporcionando um ambiente com vários recursos.
					
					</div>
				</div>
			</div>
		</div>		
        
   

    <jsp:include page="layout_final.jsp" />