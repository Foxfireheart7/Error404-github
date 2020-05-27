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
		
	</head>
	
	<body>
		<!-- CABEÇALHO -->
		<c:import url="Menu.jsp"/>
		<!-- /CABEÇALHO-->
			<div class ="crud-space">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<h2>Página de Edição</h2> 
							<br>
							<div class="edit-form">
								<form action="ProdutoAlterar" method="post">
									<div class="form-group">
										<h2>Editar</h2>
									</div>
									<div class="form-group">
										<input type="hidden" name="idProduto" value="${produtoDetalhado.id }">
										<label for="email"> Nome do Produto:</label>
										<input type="text" class="form-control" name="nome" value="${produtoDetalhado.nome }" maxlength="50" placeholder="Coloque o nome do produto aqui" required>
									</div>
									<div class="form-group">
										<label for="price"> Preço:</label>
										<input type="text" class="form-control" name="preco" value="${produtoDetalhado.preco }" maxlength="50" placeholder="Coloque o preço aqui" required>
									</div>
									<div class="form-group">
										<label for="category"> Categoria:</label>
										<input type="text" class="form-control" name="categoria" value="${produtoDetalhado.categoria }" maxlength="50" placeholder="Categoria" required>
									</div>
									<div class="form-group">
										<label for="descricao"> Descrição:</label>
										<textarea class="form-control" name="descricao" placeholder="Descrição do produto" maxlength="500" rows="7" required>${produtoDetalhado.descricao }</textarea>
									</div>
									<!-- comando para atualizar ou remover o produto procurado -->
									<button  type="submit" name="acao" value="salvar">Atualizar</button> 
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
					
		
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