<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error 404 - Favoritos</title>

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
<link type="text/css" rel="stylesheet" href="css/wishlist.css"/>
</head>
<body>
<!-- CABEÇALHO -->
		<header>
<!--TOPO CABEÇALHO-->
            <div class="header-top-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <div class="header-top-left-menu">
                                <nav>
                                    <ul>
					<!-- links para mudança de página (tela de login, favoritos e carrinho)-->
                                        <li><a href="./login.jsp"><i class="fa fa-user"></i>Minha Conta</a></li>
                                        <li><a href="./favoritos.jsp"><i class="fa fa-heart"></i>Favoritos<span> (0)</span></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i>Carrinho</a></li>
					<!-- /links para mudança de página (tela de login, favoritos e carrinho)-->
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="header-top-right-menu">
                                <nav>
                                    <ul>
					<!-- lista de mudança de câmbio e idioma -->
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">BRL<i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">&real; BRL</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PT/BR<i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown-menu lang">
                                                <li><a href="#">PT/BR</a></li>
						<!-- /lista de mudança de câmbio e idioma -->
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!-- /TOPO CABEÇALHO -->
<!-- CABEÇALHO PRINCIPAL -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<!-- inserir link para menu principal e imagem do logo -->
								<a href="#" class="logo">
									<img src="LOGOERROR404.png" alt="">
								<!-- /inserir link para menu principal e imagem do logo -->
								</a>
							</div>
						</div>
						<!-- /LOGO -->
<!-- BARRA PESQUISA -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<!-- barra de pesquisa e botão de busca -->
									<input class="input" placeholder="Busque aqui">
									<button class="search-btn" name="action" value="">Buscar</button>
									<!-- /barra de pesquisa e botão de busca -->
								</form>
							</div>
						</div>
						<!-- /BARRA PESQUISA -->
<!-- CONTA -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">      
							</div>
						</div>
						<!-- /CONTA -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /CABEÇALHO PRINCIPAL -->
      </header>
    <!-- /CABEÇALHO-->
<!-- BARRA NAVEGAÇÃO -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav ">
						<!-- barra de navegaÃ§Ã£o com links diretÃ³rios para as pÃ¡ginas respectivas -->
						<li class="active"><a href="./index.jsp">Início</a></li>
						<li><a href="./shop.jsp">Laptops</a></li>
						<li><a href="./shop.jsp">Smartphones</a></li>
						<li><a href="./shop.jsp">Câmeras</a></li>
						<li><a href="./shop.jsp">Acessórios</a></li>
						<!-- /barra de navegação com links diretórios para as páginas respectivas -->
					</ul>
					<!-- /NAV -->
          </div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /BARRA NAVEGAÇÃO -->
<br><br><br>		

<!--FAVORITOS-->
        <section class="section-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="b-header-text">
                            <h1>FAVORITOS</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End of Blog Header Area-->
        <!--Cart Main Area Start-->
        <section class="cart-main-area wishlist-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <form action="#">
                            <div class="cart-table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="p-image">Produto</th>
                                            <th class="p-name">Nome</th>
                                            <th class="p-amount">Preço</th>
                                            <th class="p-quantity">Estoque</th>
                                            <th class="p-total">Adicionar Carrinho</th>
                                            <th class="p-action">Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="p-image"><a href="product-details.html"><img alt="" src="img/cart-3.jpg"></a></td>
                                            <td class="p-name">
                                                <a href="#">Nome do Produto</a>
                                                <p>Descrição<span>Descrição</span></p>
                                                <p class="c-p-size"><span>Qtd: </span> 1</p>
                                            </td>
                                            <td class="p-amount"><span class="amount">$???</span></td>
                                            <td class="p-quantity"><span>Em estoque</span></td>
                                            <!-- comando para adicionar ao carrinho -->
                                            <td class="product-add-to-cart" name="action" value=""><a href="#">Adicionar Carrinho</a></td>
                                            <!-- comando para excluir dos favoritos -->
                                            <td class="p-action" name="action" value=""><a href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td class="p-image"><a href="product-details.html"><img alt="" src="img/cart-4.jpg"></a></td>
                                            <td class="p-name">
                                                <a href="#">Nome do Produto</a>
                                                <p>Descrição<span>Descrição</span></p>
                                                <p class="c-p-size"><span>Qtd: </span> 1</p>
                                            </td>
                                            <td class="p-amount"><span class="amount">$???</span></td>
                                            <td class="p-quantity"><span>Em estoque</span></td>
                                            <!-- comando para adicionar ao carrinho -->
                                            <td class="product-add-to-cart" name="action" value=""><a href="#">Adicionar Carrinho</a></td>
                                            <!-- comando para excluir dos favoritos -->
                                            <td class="p-action" name="action" value=""><a href="#"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!--End of Cart Main Area-->

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
