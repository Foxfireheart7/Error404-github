<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.Usuario" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Error 404 - Listagem</title>

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

	</head>

	<body>
		<!-- CABEÇALHO -->
		<c:import url="Menu.jsp"/>
    	<!-- /CABEÇALHO-->
		
		
		<!-- SECTION -->
		<br><br>
		<!--SEÇÃO-->
		<form action="ProdutoListar" method="post">
        <section class="section-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="b-header-text">
                            <h1>Produtos</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       </form>
        <!--/SEÇÃO-->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
				
				<br><br>
				
					<!-- PAGINAÇÃO -->
					<div id="store" class="col-md-12">
						<!-- store top filter -->
						<div class="store-filter clearfix">
							<div class="store-sort">
								<label>
									Ordenar por:
									<select class="select" name="filtro" id="filtro">
										<option value=""> </option>
										<option value="ProdutoListar?acao=buscar&filtro=todos">Todos</option>
										<option value="ProdutoListar?acao=buscar&filtro=maisVendidos">Mais vendidos</option>
									</select>
									<script>
										document.getElementById("filtro").onchange = function() {
											if (this.selectedIndex!==0) {window.location.href = this.value;}
										};
									</script>
								</label>
							</div>
						</div>
						<!-- /store top filter -->
						
						<br><br>
						
						<!-- adicionar um comando para inserir as informações de cada produto em cada div class = "product" (essas informações já postas devem ser substituída pelo comando) -->
						<!-- store products -->
						<c:if test="${not empty lista}">
							<div id="list" class="row">
								<!-- product -->	
								<c:forEach var="produto" items="${lista }">
								<div class="col-md-4 col-xs-6">
									
										<div class="product">
										<div class="product-img">
											<img src="#" alt="">
										</div>
										<div class="product-body">
											<p class="product-category">${produto.categoria }</p>
											<h3 class="product-name"><a href="./produto1.html">${produto.nome }</a></h3>
											<h4 class="product-price">${produto.preco }</h4>
											<div class="product-btns">
												<a href="FavoritosAdicionar?idProduto=${produto.id }" class="add-to-wishlist" id="heart"><i class="fa fa-heart-o"></i></a>
											</div>
										</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>adicionar carrinho</button>
											</div>
										</div>
										<br><br><br>
								</div>
								</c:forEach>
								
								<div class="store-filter clearfix col-md-12">
								<br><br><br><br>
									<ul class="store-pagination">
										<li class="active">1</li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
									</ul>
								</div>
								<!-- /store bottom filter -->
							</div>
							<!-- /STORE -->
						</c:if>
						
						</div>
					<!-- /row -->
					</div>
					<!-- /container -->
				</div>
				<!-- /PAGINAÇÃO -->
			</div>
		<br><br>
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