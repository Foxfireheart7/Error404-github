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
                    <p>Aqui você pode atualizar ou excluir um produto. Para isso, insira o ID do produto desejado. </p>
                    <br>
                    <form class="edit-form">
                        <div class="form-group">
                         <h2>Atualizar/ Remover</h2>
                         <p></p>
                         <br>
                            <label for="name"> ID:</label>
                            <input type="text" class="form-control" id="id" name="acao" required maxlength="3">
                            <p></p>
                            <!-- comando para buscar o produto no banco de dados -->
                            <button  type="get" name="action" value="">Buscar</button>
                        </div>
                        <div class="form-group">
                            <label for="email"> Nome do Produto:</label>
                            <input type="email" class="form-control" id="nome" name="resposta" required maxlength="50" placeholder="Coloque o nome do produto aqui">
                        </div>
			<div class="form-group">
                            <label for="price"> Preço:</label>
                            <input type="text" class="form-control" id="preco" name="resposta" required maxlength="50" placeholder="Coloque o preço aqui">
                        </div>
                        <div class="form-group">
                            <label for="name"> Descrição:</label>
                            <textarea class="form-control" name="resposta" id="descricao" placeholder="Coloque a descrição do produto aqui" maxlength="6000" rows="7"></textarea>
                        </div>
                        <!-- comando para atualizar ou remover o produto procurado -->
			<button  type="submit" name="action" value="">Atualizar</button> <button type="submit" name="action" value="">Remover</button>
			</form>
			<form class="add-form">
			 <h2>Adicionar</h2>
                         <p></p>
                         <br>
                        <div class="form-group">
                            <label for="email"> Nome do Produto:</label>
                            <input type="email" class="form-control" id="nome" name="resposta" required maxlength="50" placeholder="Coloque o nome do produto aqui">
                        </div>
			            <div class="form-group">
                            <label for="price"> Preço:</label>
                            <input type="text" class="form-control" id="preco" name="resposta" required maxlength="50" placeholder="Coloque o preço aqui">
                        </div>
                        <div class="form-group">
                            <label for="name"> Descrição:</label>
                            <textarea class="form-control" name="resposta" id="descricao" placeholder="Coloque a descrição do produto aqui" maxlength="6000" rows="7"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="name"> Imagem do Produto:</label>
                            <input type="file" class="form-control" id="image" name="image" required>
                        </div>
                        <!-- comando para adicionar o produto no banco de dados -->
                        <button type="submit" name="action" value="" id="btnAlterar">Confirmar</button>
                    </form>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>O produto foi alterado com sucesso!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Erro</h3> Desculpe, houve um erro ao alterar o produto </div>
                </div>
			</div>
			</div></div>
			
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

<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
	
</body>
</html>
