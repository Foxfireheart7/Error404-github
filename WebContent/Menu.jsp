<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.Usuario" %>


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
								<li <%if(Usuario.isLogado() == false) %>><a href="./login.jsp"><i class="fa fa-user"></i>Login/Registrar</a></li>
								<li <%if(Usuario.isLogado() == true && Usuario.isAdm() == false)%>><a href="./favoritos.jsp"><i class="fa fa-heart"></i>Favoritos<span></span></a></li>
								<li <%if(Usuario.isLogado() == true && Usuario.isAdm() == false)%>><a href="#"><i class="fa fa-shopping-cart"></i>Carrinho</a></li>
								<li <%if(Usuario.isLogado() == true && Usuario.isAdm() == false)%>><a href="#"><i class="fa fa-money"></i>Meus Produtos</a></li>
								<li <%if(Usuario.isLogado() == true && Usuario.isAdm() == true )%>><a href="#"><i class="fa fa-users"></i>Usuarios</a></li>
								<li <%if(Usuario.isLogado() == true)  %>><a href="UsuarioLogar?acao=sair"><i class="fa fa-sign-out"></i>Sair</a></li>
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
				<div class="col-md-2">
					<div class="header-logo">
						<!-- inserir link para menu principal e imagem do logo -->
						<a href="#" class="logo">
						<img src="LOGOERROR404.png" alt="">
						<!-- /inserir link para menu principal e imagem do logo -->
						</a>
					</div>
				</div>
				
				<!-- BARRA PESQUISA -->
				<div class="col-md-10">
					<div class="header-search">
						<!-- barra de pesquisa e botão de busca -->
						<input class="input" name="data[search]" placeholder="Busque aqui">
						<a href="ProdutoListar?acao=buscar"><button class="search-btn" name="action" value="" >Buscar</button></a>
						<!-- /barra de pesquisa e botão de busca -->
					</div>
				</div>
				<!-- /BARRA PESQUISA -->

				<!-- CONTA -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn"></div>
				</div>

				<!-- /CONTA -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</div>
	<!-- /CABEÇALHO PRINCIPAL -->
			
	<!-- BARRA NAVEGAÇÃO -->
	<nav id="navigation">
		<!-- container -->
		<div class="container">
		<!-- responsive-nav -->
			<div id="responsive-nav">
				<!-- NAV -->
				<ul class="main-nav nav navbar-nav ">
					<!-- barra de navegaÃ§Ã£o com links diretÃ³rios para as pÃ¡ginas respectivas -->
					<li><a href="PaginaInicial">Início</a></li>
					<li><a href="ProdutoListar?acao=buscar&filtro=todos">Produtos</a></li>
					<!-- /barra de navegação com links diretórios para as páginas respectivas -->
				</ul>
				<!-- /NAV -->
			</div>
			<!-- /responsive-nav -->
		</div>
		<!-- /container -->
	</nav>
	<!-- /BARRA NAVEGAÇÃO -->
</header>