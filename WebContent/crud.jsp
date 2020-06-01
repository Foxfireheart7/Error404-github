<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Error 404 Store</title>
		
		<!-- LINKS -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/crud.css"/>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		
	</head>
	
	<body>
		<!-- CABEÇALHO -->
		<c:import url="Menu.jsp"/>
		<!-- /CABEÇALHO-->
			<div class ="crud-space">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<h2>Adicionar Produto</h2> 
							<br>
							<div class="edit-form">			
								<form action="ProdutoCadastrar" method="post">
									<h2>Adicionar</h2>
									<p></p>	
									<br>
									 
									<div class="form-group">
										<label for="email"> Nome do Produto:</label>
										<input type="text" class="form-control" name="nome" required maxlength="50" placeholder="Coloque o nome do produto aqui">
									</div>
									<div class="form-group">
										<label for="categoria"> Categoria:</label>
										<input type="text" class="form-control" name="categoria" required maxlength="50" placeholder="Coloque o preço aqui">
									</div>
									<div class="form-group">
										<label for="price"> Preço:</label>
										<input type="text" class="form-control" name="preco" required maxlength="50" placeholder="Coloque o preço aqui">
									</div>
									<div class="form-group">
										<label for="descricao"> Descrição:</label>
										<textarea class="form-control" name="descricao" placeholder="Coloque a descrição do produto aqui" maxlength="500" rows="7"></textarea>
									</div>
									<div class="form-group">
										<label for="name"> Imagem do Produto:</label>
										<input type="file" class="form-control" name="path" required>
									</div>
									<button type="submit">Confirmar</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
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
