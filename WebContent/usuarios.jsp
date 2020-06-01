<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-81">
		<title>Usuários</title>

		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<link type="text/css" rel="stylesheet" href="css/login.css"/>
	</head>
<body>
<!-- colocar header -->
<c:import url="Menu.jsp"/>

<!--USUARIOS-->
	<form action="UsuarioListar" method="post">
	        <section class="section-header-area">
	            <div class="container">
	                <div class="row">
	                    <div class="col-lg-12 col-md-12 col-sm-12">
	                        <div class="b-header-text">
	                            <h1>USUÁRIOS</h1>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </section>
		</form>
		
		<br><br>
						<!-- /store top filter -->
        <!--Cart Main Area Start-->
        <div class="users">
        <section class="cart-main-area wishlist-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="cart-table table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="p-user">Usuários</th>
                                            <th class ="invisible">--------------------------</th>
                                            <th class="p-id">ID</th>
                                            <th class="invisible">--------------------------</th>
                                            <th class="p-type">Tipo de Usuario</th>
                                            <th class="invisible">--------------------------</th>
                                            <th class="p-sales">Quantidade de Anúncios</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="list1" items="${listaUsuarios }">
                                        	<tr>
                                            	<td class="p-user">${list1.nome }</td>
	                                            <td>    </td>
	                                            <td class="p-id"><a href="#">${list1.id }</a></td>
	                                            <td>    </td>
	                                            <td class="p-typet"><span>${list1.tipo }</span></td>
	                                            <td>    </td>
	                                            <td class="p-sales"><span>${list1.produtos }</span></td>
                                        	</tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                    </div>
                </div>
             </div>
            </section>
          </div>
        <!--/USUARIOS-->
        <!-- colocar footer -->
        <br><br><br>
        <c:import url="MenuInf.jsp"/>
        
        <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/animationLogin.js"></script>
</body>
</html>