<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error 404 Store</title>

<!-- LINKS -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/slick.css"/>
<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
<link rel="stylesheet" href="css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<link type="text/css" rel="stylesheet" href="css/detalhes.css"/>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>
<body>
    
<!-- CABE�ALHO -->
		<header>
<!--TOPO CABE�ALHO-->
            <div class="header-top-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                            <div class="header-top-left-menu">
                                <nav>
                                    <ul>
					<!-- links para mudan�a de p�gina (tela de login, favoritos e carrinho)-->
                                        <li><a href="./login.jsp"><i class="fa fa-user"></i>Minha Conta</a></li>
                                        <li><a href="./favoritos.jsp"><i class="fa fa-heart"></i>Favoritos<span> (0)</span></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i>Carrinho</a></li>
					<!-- /links para mudan�a de p�gina (tela de login, favoritos e carrinho)-->
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="header-top-right-menu">
                                <nav>
                                    <ul>
					<!-- lista de mudan�a de c�mbio e idioma -->
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">BRL<i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">&real; BRL</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">PT/BR<i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown-menu lang">
                                                <li><a href="#">PT/BR</a></li>
						<!-- /lista de mudan�a de c�mbio e idioma -->
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!-- /TOPO CABE�ALHO -->
<!-- CABE�ALHO PRINCIPAL -->
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
									<!-- barra de pesquisa e bot�o de busca -->
									<input class="input" placeholder="Busque aqui">
									<button class="search-btn" name="action" value="">Buscar</button>
									<!-- /barra de pesquisa e bot�o de busca -->
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
			<!-- /CABE�ALHO PRINCIPAL -->
      </header>
    <!-- /CABE�ALHO-->
<!-- BARRA NAVEGA��O -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav ">
						<!-- barra de navegação com links diretórios para as páginas respectivas -->
						<li class="active"><a href="./index.jsp">In�cio</a></li>
						<li><a href="./shop.jsp">Laptops</a></li>
						<li><a href="./shop.jsp">Smartphones</a></li>
						<li><a href="./shop.jsp">C�meras</a></li>
						<li><a href="./shop.jsp">Acess�rios</a></li>
						<!-- /barra de navega��o com links diret�rios para as p�ginas respectivas -->
					</ul>
					<!-- /NAV -->
          </div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /BARRA NAVEGA��O -->
		<br><br>
 <!--PRODUTO DETALHADO-->
 <!-- adicionar um comando para inserir as fotos do produto em div class = "product-details-area" (essas fotos j� postas devem ser substitu�da pelo comando) -->
        <section class="product-details-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-5">
                        <div class="product-s-l">
                            <div class="product-large">
                                <div class="tab-content">
                                <!-- colocar fotos do produto em v�rios �ngulos -->
                                    <div class="tab-pane active in" id="img-1">
                                        <a href="product-details.html"><img alt="" src="img/product/tab-l-1.jpg"></a>
                                    </div>
                                    <div class="tab-pane" id="img-2">
                                        <a href="product-details.html"><img alt="" src="img/product/tab-l-2.jpg"></a>
                                    </div>
                                    <div class="tab-pane" id="img-3">
                                        <a href="product-details.html"><img alt="" src="img/product/tab-l-3.jpg"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!-- adicionar um comando para inserir as informa��es do produto em div class = "product-right-details" (essas informa��es j� postas devem ser substitu�da pelo comando) -->
                    <div class="col-lg-7 col-md-7 col-sm-7">
                        <div class="product-right-details">
                            <h2>NOME DO PRODUTO</h2>
                            <div class="product-rating">
                                <i class="fa fa-star color"></i>
                                <i class="fa fa-star color"></i>
                                <i class="fa fa-star color"></i>
                                <i class="fa fa-star color"></i>
                                <i class="fa fa-star color"></i>
                            </div>
                            <!-- pre�o e informa��es do produto -->
                            <p class="p-d-price">$??? <span>$??</span></p>
                            <p>S� restam ?      |    Disponibilidade : <span class="stock">Em estoque </span> </p>
                            <p class="middle-border">Descri��o</p>
                        </div>
                                <form action="#">
                                    <div class="show-label showing">
                                            <label>Quantidade: </label>
                                            <select>
                                                <option selected="selected" value="position">9</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                                <option>9</option>
                                            </select>
                                        </div>
                                </form>								
                            </div>
                        </div>
                        <div class="p-d-cart">
                            <a href="#" class="p-d-btn">Adicionar ao Carrinho</a>
                            <a href="#" class="p-d-fav"><i class="fa fa-heart"></i></a>
                        </div>
                    </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="p-details-tab">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane" id="tags">
                                    <p>Descri��o Completa</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <!--/PRODUTO DETALHADO-->
		

<!-- RODAPE -->
		<footer id="footer">
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Sobre N�s</h3>
								<p>Bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>Rua Erro Errado, 5615 - S�o Paulo, SP</a></li>
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
									<li><a href="#">C�meras</a></li>
									<li><a href="#">Acess�rios</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Informa��es</h3>
								<ul class="footer-links">
									<li><a href="#">Sobre N�s</a></li>
									<li><a href="#">Nos Consulte</a></li>
									<li><a href="#">Pol�tica de Privacidade</a></li>
									<li><a href="#">Pedidos e Retornos</a></li>
									<li><a href="#">Termos e Condic�es</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Servi�o</h3>
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
