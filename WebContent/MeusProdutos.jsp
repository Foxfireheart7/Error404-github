<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meus Produtos</title>
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
<c:import url="Menu.jsp"/>
<!--FAVORITOS-->
	<form action="MeusProdutos" method="post">
		<section class="section-header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="b-header-text">
							<h1>Meus Produtos</h1>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
	
	<br><br>
	
		<!-- /store top filter -->
        <!--Cart Main Area Start-->
        <section class="cart-main-area wishlist-area">
        	<c:if test="${not empty meusProdutos }">
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
                                            <th class="p-quantity">Vendas</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="mProdutos" items="${meusProdutos }">
	                                        <tr>
	                                            <td class="p-image"><a href="product-details.html"><img alt="" src="${mProdutos.path }" width="100" height="100"></a></td>
	                                            <td class="p-name">
	                                                <a href="ProdutoDetalhar?idProduto=${mProdutos.id }&criadorProduto=1">${mProdutos.nome }</a>
	                                            </td>
	                                            <td class="p-amount"><span class="amount">$${mProdutos.preco }</span></td>
	                                            <td class="p-quantity"><span>${mProdutos.vendidos }</span></td>
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
        <c:import url="MenuInf.jsp"/>
</body>
</html>