<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
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
	<!-- colocar header -->
		<c:import url="Menu.jsp"/>
	<!--CARRINHO-->
		<form action="CarrinhoListar" method="post">
		<section class="section-header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="b-header-text">
							<h1>CARRINHO</h1>
						</div>
					</div>
				</div>
			</div>
		</section>
		</form>
	<!--End of Blog Header Area-->
	<!--Cart Main Area Start-->
		<section class="cart-main-area wishlist-area">
			<c:if test="${not empty carrinhoAtual }">
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
                                            <th class="p-action">Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="carrinhoAgora" items="${carrinhoAtual }">
                                        <tr>
                                            <td class="p-image"><a href="product-details.html"><img alt="" src="${carrinhoAgora.path }" width="100" height="100"></a></td>
                                            <td class="p-name">
                                                <a href="ProdutoDetalhar?idProduto=${carrinhoAgora.id }&criadorProduto=0">${carrinhoAgora.nome }</a>
                                            </td>
                                            <td class="p-amount"><span class="amount">$${carrinhoAgora.preco }</span></td>
                                            <td class="p-action">
                                            	<form action="CarrinhoRemover" method="post">
                                            		<input type="hidden" name="idProduto" value="${carrinhoAgora.id }">
                                            		<button><i class="fa fa-times"></i></button>
                                            	</form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                	</tbody>
                                </table>
                            </div>
                        <div class="row">
                                <div class="col-lg-7 col-md-7 col-sm-6">
                                    <div class="cart-coupn-leftside">
                                        <a href="ProdutoListar" class="continue-s">Continue Comprando</a>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-6">
                                    <div class="cart-coupon-rightside">
                                        <form action="LimparCarrinho" method="post">
	                                        <div class="r-c-btn">
	                                            <button type="submit" class="butao2">Limpar Carrinho</button>
	                                        </div>
                                        </form>
                                        <div class="amount-table table-responsive">
                                            <table>
                                                <tbody>
                                                    <tr class="s-total">
                                                        <td>Frete</td>
                                                        <td>Gratis pra todo Brasil</td>
                                                    </tr>
                                                    <tr class="g-total">
                                                        <td>Total a pagar</td>
                                                        <td><span style="color: #018B59;">R$${total }</span></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <a href="checkout.html" class="checkout" style="background:#018B59;">Continue para o Checkout</a>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${empty carrinhoAtual }">
            	<div class="row">
            		<div class="myDiv">
            			<p><h3>Error <del>404 </del>, no products found here :(</h3>
            			<div class="cart-coupn-leftside">
                       		<a href="ProdutoListar" class="continue-s">Continue Comprando</a>
                    	</div>
            		</div>
            	</div>
            </c:if>
        </section>
		<!--/CARRINHO-->
		
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