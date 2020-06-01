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
<!-- CABEÇALHO -->
		<c:import url="Menu.jsp"/>
<br><br><br>		
<body>
<!--FAVORITOS-->
        <section class="section-header-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="b-header-text">
                            <h1>Relatorio</h1>
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
						</div>
						</div>
						</div>
						<br><br>
						<!-- /store top filter -->
        <!--Cart Main Area Start-->
        <section class="cart-main-area wishlist-area">
        <c:if test="${not empty relatorioVendas }">
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
	                                    <c:forEach var="rVendas" items="${relatorioVendas }">
	                                        <tr>
	                                            <td class="p-image"><a href="product-details.html"><img alt="" src="img/cart-3.jpg"></a></td>
	                                            <td class="p-name">
	                                                <a href="#">Usuario: ${rVendas.nomeUsuario }</a>
	                                                <p>Produto: ${rVendas.nomeProduto }</p>
	                                            </td>
	                                            <td class="p-amount"><span class="amount">$${rVendas.precoProduto }</span></td>
	                                            <td class="p-quantity"><span>${rVendas.vendasProduto }</span></td>
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
        <c:import url="MenuInf.jsp"/>
        <!--End of Cart Main Area-->
</body>
</html>