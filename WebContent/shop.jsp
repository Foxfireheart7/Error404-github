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
		<link type="text/css" rel="stylesheet" href="css/crud.css"/>
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
											<h3 class="product-name"><a href="ProdutoDetalhar?idProduto=${produto.id }&criadorProduto=0">${produto.nome }</a></h3>
											<h4 class="product-price">${produto.preco }</h4>
											<form action="FavoritosAdicionar" method="post">
												<div class="product-btns">
													<!-- comando para adicionar aos favoritos -->
													<!--<a href="FavoritosAdicionar?idProduto=${mVendidos.id }&url=index.jsp" class="add-to-wishlist" id="heart"><i class="fa fa-heart-o"></i></a>-->
													<input type="hidden" name="idProduto" value="${produto.id }">
													<input type="hidden" name="url" value="shop.jsp">
													<button class="butao"><i class="fa fa-heart-o"></i><span class="tooltipp">Adicionar aos Favoritos</span></button>
												</div>
											</form>
										</div>
											<form action="CarrinhoAdicionar" method="post">
												<div class="add-to-cart">
													<!-- comando para adicionar ao carrinho -->
													<input type="hidden" name="idProduto" value="${produto.id }">
													<input type="hidden" name="url" value="shop.jsp">
													<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Adicionar Carrinho</button>
												</div>
											</form>
										</div>
										<br><br><br>
								</div>
								</c:forEach>
								</div>
								<div class="store-filter clearfix col-md-12">
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