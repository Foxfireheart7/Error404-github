<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<body>
<!--FAVORITOS-->
        <section class="section-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="b-header-text">
                            <h1>FORMULARIO MENSAL</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
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
									Categoria:
									<select class="input-select">
										<option value="0">Todos</option>
										<option value="1">Laptops</option>
										<option value="2">Smatphones</option>
										<option value="3">Câmeras</option>
										<option value="4">Acessórios</option>
									</select>
								</label>

								<label>
									Datas:
									<select class="input-select">
										<option value="0">30 meses</option>
										<option value="1">60 meses</option>
									</select>
								</label>
							</div>
						</div>
						</div>
						</div>
						</div>
						</div>
						<br><br>
						<!-- /store top filter -->
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
                                            <th class="p-quantity">Vendas</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="p-image"><a href="product-details.html"><img alt="" src="img/cart-3.jpg"></a></td>
                                            <td class="p-name">
                                                <a href="#">Nome do Produto</a>
                                                <p>Breve Descrição<span></span></p>
                                            </td>
                                            <td class="p-amount"><span class="amount">$???</span></td>
                                            <td class="p-quantity"><span>qtd de vendas</span></td>
                                        </tr>
                                        <tr>
                                            <td class="p-image"><a href="product-details.html"><img alt="" src="img/cart-4.jpg"></a></td>
                                            <td class="p-name">
                                                <a href="#">Nome do Produto</a>
                                                <p>Breve Descrição<span>Descrição</span></p>
                                            </td>
                                            <td class="p-amount"><span class="amount">$???</span></td>
                                            <td class="p-quantity"><span>qtd de vendas</span></td>
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
</body>
</html>