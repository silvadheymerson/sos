<%-- 
    Document   : login
    Created on : 03/11/2016, 14:38:21
    Author     : SEE
--%>

<jsp:include page="layout_inicio.jsp" />
                <div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Faze Login </h1>
					</div>
				</div>
			</div>
                </div><br><br><br>

<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
                                
				<div class="panel-heading">Login<h4><div style="float:right; font-size: 80%; position: relative; top:-15px" ><a href="cadastrousuario.jsp"><b>Criar login</b></a></div> </h4></div>
                                
				<div class="panel-body">
					<form role="form">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Senha" name="password" type="password" value="">
							</div>
							<div class="checkbox">
								<label>
									<input name="remember" type="checkbox" value="Remember Me">Lembra senha
								</label>
							</div>
                                                    <a href="index.jsp" class="btn btn-primary">Login</a>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
</div><!-- /.row -->






<jsp:include page="layout_final.jsp" />