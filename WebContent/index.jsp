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
<form action="PaginaInicial" method="post">


<!-- SEÇÃO -->
<div class="section">
	<!-- container -->
<div class="container">
	<!-- row -->
<div class="row">
	<!-- shop -->
	<div class="shop0">
		<div class="shop-img">
			<img src="./img/banner.jpg" alt="">
		</div>
	</div>
</div>
<!-- /shop -->
</div>
<!-- /row -->
</div>
<!-- /container -->
<!-- /SEÇÃO -->
<br>
<!-- SEÇÃO -->
<div class="section">
<!-- container -->
<div class="container">
<!-- row -->
<div class="row">
<!-- section title -->
<div class="col-md-12">
<div class="section-title">
<h3 class="title">Recomendados</h3>
</div>
</div>
<!-- /section title -->




<!-- PRODUTOS COM CARROSSEL -->
<c:if test="${not empty seisProdutos}">
<div class="col-md-12">
<div class="row">
<div class="products-tabs">
<!-- tab -->
<div class="tab-pane active">
<div class="products-slick" data-nav="#slick-nav-1">
<c:forEach var="produtos" items="${seisProdutos }">
<!-- product -->
<div class="product">
<div class="product-img">
<img src="./img/shop02.png" alt="">
</div>
<div class="product-body">
<p class="product-category">${produtos.categoria }</p>
<h3 class="product-name"><a href="#">${produtos.nome }</a></h3>
<h4 class="product-price">$${produtos.preco }</h4>
<div class="product-btns">
<!-- comando para adicionar aos favoritos -->
<button class="add-to-wishlist" name="action" value=""><i class="fa fa-heart-o"></i><span class="tooltipp">Adicionar aos Favoritos</span></button>
</div>
</div>
<div class="add-to-cart">
<!-- comando para adicionar ao carrinho -->
<button class="add-to-cart-btn" name="action" value=""><i class="fa fa-shopping-cart"></i> Adicionar Carrinho</button>
</div>
</div>
<!-- /product -->        
</c:forEach>
</div>
<br><br><br>
<div id="slick-nav-1" class="products-slick-nav"></div>
</div>
<!-- /tab -->
</div>
</div>
</div>
</c:if> 
<!-- /PRODUTOS COM SLIDE -->
</div>





<!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /SEÇÃO -->
<br>
<!-- SEÇÃO -->
<div class="section">
<!-- container -->
<div class="container">
<!-- row -->
<div class="row">
<!-- shop -->
<div class="shop">
<div class="shop-img">
<img src="./img/banner.jpg" alt="">
</div>
<div class="shop-body">
<h2>Coleção<br>Smartphones</h2>
<a href="#" class="cta-btn">Compre Agora <i class="fa fa-arrow-circle-right"></i></a>
</div>
</div>
</div>
<!-- /shop -->
</div>
<!-- /row -->
</div>
<!-- /container -->
<!-- /SEÇÃO -->
<br>

<!-- SEÇÃO -->
<div class="section">
<!-- container -->
<div class="container">
<!-- row -->
<div class="row">
<!-- section title -->
<div class="col-md-12">
<div class="section-title">
<h3 class="title">Mais Vendidos</h3>
</div>
</div>


<c:if test="${not empty maisVendidos}">
<!-- /section title -->
<div class="col-md-12">
<div class="row">
<div class="products-tabs">
<!-- tab -->
<div id="tab2" class="tab-pane fade in active">
<div class="products-slick" data-nav="#slick-nav-2">
<c:forEach var="mVendidos" items="${maisVendidos }">        
<!-- product -->
<div class="product">
<div class="product-img">
<img src="./img/shop02.png" alt="">
<div class="product-label">
</div>
</div>
<div class="product-body">
<p class="product-category">${mVendidos.categoria }</p>
<h3 class="product-name"><a href="#">${mVendidos.nome }</a></h3>
<h4 class="product-price">$${mVendidos.preco }</h4>
<div class="product-btns">
<!-- comando para adicionar aos favoritos -->
<button class="add-to-wishlist" name="action" value=""><i class="fa fa-heart-o"></i><span class="tooltipp">Adicionar aos Favoritos</span></button>
</div>
</div>
<div class="add-to-cart">
<!-- comando para adicionar ao carrinho -->
<button class="add-to-cart-btn" name="action" value=""><i class="fa fa-shopping-cart"></i>Adicionar Carrinho</button>
</div>
</div>
</c:forEach>
<!-- /product -->

</div>
<div id="slick-nav-2" class="products-slick-nav"></div>
</div>
        
<!-- /tab -->
</div>
</div>
</div>
</c:if>
     
<!-- /Products tab & slick -->
</div>
    
<!-- /row -->
</div>
   
<!-- /container -->
</div>
  
<!-- /SEÇÃO -->


</form>
<br>
<br>
<br>


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
<li><a href="./shop.jsp">Laptops</a></li>
<li><a href="./shop.jsp">Smartphones</a></li>
<li><a href="./shop.jsp">Câmeras</a></li>
<li><a href="./shop.jsp">Acessórios</a></li>
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
<li><a href="./favoritos.jsp">Favoritos</a></li>
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