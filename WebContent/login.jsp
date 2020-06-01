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
    				<label for="email">E-mail</label>
      				<input type="text" placeholder="email@domain.com" name="email" required/>
      				<label for="nome">Nome</label>
      				<input type="text" placeholder="nome completo" name="nome" required/>
      				<label for="cpf">CPF</label>
      				<input type="text" placeholder="cpf" name="cpf" required/>
      				<label for="cep">CEP</label>
      				<input type="text" placeholder="cep" name="cep" required/>
      				<label for="endereco">Endereço</label>
      				<input type="text" placeholder="Endereço e número" name="endereco" required/>
      				<label for="complemento">Complemento</label>
      				<input type="text" placeholder="ex(apto., bloco, etc)" name="complemento"/>
      				<label for="telefone">Telefone</label>
      				<input type="text" placeholder="DDD telefone" name="telefone" required/>
      				<label for="senha">Senha</label>
      				<input type="password" placeholder="senha" name="senha" required/>
      				
      				<!-- adicionar comando de registro para o usuário -->
      				<button name="acao" value="criar">Registrar</button>
      				<p class="message">Já é registrado? <a href="#">Login</a></p>
    			</form>
    			
    			<!-- Login -->
    			
    			<form class="login-form" action="UsuarioLogar" method="post">
      				<label for="email">E-mail</label>
      				<input type="text" placeholder="email" name="email"/>
      				<label for="senha">Senha</label>
      				<input type="password" placeholder="senha" name="senha"/>
      				
     				<!-- adicionar comando de login para o usuário -->
     				<button type="submit" name="acao" value="logar">Login</button>
      				<p class="message">Não é registrado? <a href="#">Crie uma conta.</a></p>
    			</form>
  			</div>
		</div>
		<!-- RODAPE -->
		
		<c:import url="MenuInf.jsp"/>

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