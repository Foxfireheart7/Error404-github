<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Error 404 - Login</title>

		<!-- LINKS -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<link type="text/css" rel="stylesheet" href="css/login.css"/>
	</head>

	<body>
		<!-- CABEÇALHO -->
		<c:import url="Menu.jsp"/>
		<!-- /CABEÇALHO-->
		
		<br><br><br>		
		
		<!-- LOGIN E REGISTRO -->
        <div class="b-header-text">
        	<h1>LOGIN / REGISTRO</h1>
        </div>
                        
        <br>

		<div class="login-page">
  			<div class="form">
    			<form class="register-form" action="UsuarioCadastrar" method="post">
      				<input type="text" placeholder="email" name="email"/>
      				<input type="text" placeholder="nome" name="nome"/>
      				<input type="text" placeholder="cpf" name="cpf"/>
      				<input type="text" placeholder="cep" name="cep"/>
      				<input type="text" placeholder="endereço" name="endereco"/>
      				<input type="text" placeholder="complemento" name="complemento"/>
      				<input type="text" placeholder="telefone" name="telefone"/>
      				<input type="password" placeholder="senha" name="senha"/>
      				
      				<!-- adicionar comando de registro para o usuário -->
      				<button name="acao" value="criar">Registrar</button>
      				<p class="message">Já é registrado? <a href="#">Login</a></p>
    			</form>
    			
    			<!-- Login -->
    			
    			<form class="login-form" action="UsuarioLogar" method="post">
      				<input type="text" placeholder="email" name="email"/>
      				<input type="password" placeholder="senha" name="senha"/>
      				
     				<!-- adicionar comando de login para o usuário -->
     				<button type="submit" name="acao" value="logar">Login</button>
      				<p class="message">Não é registrado? <a href="#">Crie uma conta.</a></p>
    			</form>
  			</div>
		</div>
		<!-- RODAPE -->
		<footer id="footer">
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Sobre Nós</h3>
								<p>Bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>Rua Erro Errado, 5615 - São Paulo, SP</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+55 (11) 9999-9999</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>error404@store.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categorias</h3>
								<ul class="footer-links">
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Câmeras</a></li>
									<li><a href="#">Acessórios</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Informações</h3>
								<ul class="footer-links">
									<li><a href="#">Sobre Nós</a></li>
									<li><a href="#">Nos Consulte</a></li>
									<li><a href="#">Política de Privacidade</a></li>
									<li><a href="#">Pedidos e Retornos</a></li>
									<li><a href="#">Termos e Condicões</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Serviço</h3>
								<ul class="footer-links">
									<li><a href="#">Minha Conta</a></li>
									<li><a href="#">Meu Carrinho</a></li>
									<li><a href="#">Favoritos</a></li>
									<li><a href="#">Ajuda</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
		<!-- /RODAPE -->
		</footer>
		<!-- /LOGIN E REGISTRO -->>

<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/animationLogin.js"></script>
</body>
</html>