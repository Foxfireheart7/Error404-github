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
<link type="text/css" rel="stylesheet" href="css/detalhes.css"/>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>
<body>
    <c:import url="Menu.jsp"/>
		<br><br>
 <!--PRODUTO DETALHADO-->
 <!-- adicionar um comando para inserir as fotos do produto em div class = "product-details-area" (essas fotos já postas devem ser substituída pelo comando) -->
        <section class="product-details-area">
            <div class="container">
                <form action="ProdutoDetalhar" method="post">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-5">
                        <div class="product-s-l">
                            <div class="product-large">
                                <div class="tab-content">
                                    <div class="tab-pane active in" id="img-1">
                                        <a href="product-details.html"><img alt="" src="${produtoDetalhado.path}" width="250" height="400"></a>
                                    </div>
                                    <div class="tab-pane" id="img-2">
                                        <a href="product-details.html"><img alt="" src=""></a>
                                    </div>
                                    <div class="tab-pane" id="img-3">
                                        <a href="product-details.html"><img alt="" src=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-7">
                        <div class="product-right-details">
                        	<input type="hidden" value="${produtoDetalhado.id}">
                            <h2>Nome: ${produtoDetalhado.nome }</h2>
                            <!-- preço e informações do produto -->
                            <p class="p-d-price">$${produtoDetalhado.preco }</p>
                            <p>Disponibilidade : <span class="stock">Em estoque </span> </p>
                            <p class="middle-border">Descrição: ${produtoDetalhado.descricao }</p>
                        	</div>								
                            </div>
                        </div>
                        </form>
                        <div class="p-d-cart">
                        	<div class="row">
	                            <form action="ProdutoAlterar" method="post">
									<div class="col-md-2">
										<!-- comando para adicionar ao carrinho -->
										<input type="hidden" name="idProduto" value="${produtoDetalhado.id }">
										<input type="hidden" name="acao" value="detalhe">
										<button class="butao"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Editar produto</button>
									</div>
								</form>
							</div>
                        </div>
                    </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="p-details-tab">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane" id="tags">
                                    <p>Descrição Completa</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
		

<!-- RODAPE -->
		<c:import url="MenuInf.jsp"/>
<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
	
</body>
</html>
