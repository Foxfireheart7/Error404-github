<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<c:import url="Menu.jsp"/>
    <!-- /CABEÇALHO-->
	
	<br><br><br>		

<!--FAVORITOS-->
		<form action="FavoritosListar" method="post">
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
        </form>
        <!--End of Blog Header Area-->
        <!--Cart Main Area Start-->
        <section class="cart-main-area wishlist-area">
        <c:if test="${not empty favoritosListar }">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
	                    <div class="cart-table table-responsive">
	                        <table>
	                            <thead>
	                                <tr>
	                                    <th class="p-image">Produto</th>
	                                    <th class="p-name">Nome</th>
	                                    <th class="p-amount">Preço</th>
	                                    <th class="p-total">Adicionar Carrinho</th>
	                                    <th class="invisible">---</th>
	                                    <th class="p-action">Remover</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            <c:forEach var="favoritos" items="${favoritosListar }">
	                                <tr>
	                                    <td class="p-image"><a href="product-details.html"><img alt="" src="${favoritos.path }" width="100" height="100"></a></td>
	                                    <td class="p-name">
	                                        <a href="ProdutoDetalhar?idProduto=${favoritos.id }&criadorProduto=0">${favoritos.nome }</a>
	                                    </td>
	                                    <td class="p-amount"><span class="amount">$${favoritos.preco }</span></td>
	                                    
	                                    <!-- comando para adicionar ao carrinho -->
	                                    <td class="product-add-to-cart">
	                                    	<form action="CarrinhoAdicionar" method="post">
	                                    		<input type="hidden" name="url" value="favoritos.jsp">
	                                    		<input type="hidden" name="idProduto" value="${favoritos.id }">
	                                    		<button type="submit" class="butao">Adicionar ao Carrinho</button>
	                                    	</form>
	                                    </td>
	                                    <!-- comando para excluir dos favoritos -->
	                                    <td></td>
	                                    <td class="p-action">
	                                    	<form action="FavoritosRemover" method="post">
	                                    		<input type="hidden" name="idProduto" value="${favoritos.id }">
	                                    		<button type="submit" class="butao2"><i class="fa fa-times"></i></button>
	                                    	</form>
	                                    </td>
	                                </tr>
	                            </c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
                    </div>
                </div>
            </div>
        </c:if>
        </section>
        <!--End of Cart Main Area-->

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
