<%-- 
    Document   : Cadastrousuario
    Created on : 27/10/2016, 20:21:51
    Author     : SEE
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OfertAki</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
                                    <form id="formExemplo" method="POST" action="cadastrarusuario" data-toggle="validator" role="form" >
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
									  
									  
									  
									  <button type="submit" class="btn btn-primary">Confirmar</button>
                                                                            <a class="btn btn-danger" href="login.jsp">Voltar</a>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
	
		

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
