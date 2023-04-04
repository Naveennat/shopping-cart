<%@page import="com.s.connection.DbCon"%>
<%@page import="com.s.dao.ProductDao"%>
<%@page import="com.s.model.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}

ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Pets cart</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">


<%@include file="includes/head.jsp"%>
</head>
<style>
body{
background: url(https://img.freepik.com/free-vector/blue-pink-halftone-background_53876-99004.jpg?w=2000);  
 /*  background: -webkit-linear-gradient(left, #7579ff, #b224ef); */
  font-family: 'Poppins', sans-serif;
}
.card-header{
background-color: #D7D7D7;
}
.nav-item:hover{
background-color: #D7D7D7;
display: cover;
border-radius: 3px;
}

#preloader{

background: white url(https://cdn.dribbble.com/users/1187836/screenshots/5684366/image.gif) no-repeat center center;
background-size: 30%;
width: 100%;
height: 100vh;
position: fixed;
z-index: 100;
 
}






</style>
<body>



<div id="preloader"></div>

    
  


	<%@include file="includes/navbar.jsp"%>

	<div class="container">
		<div class="card-header my-3">Favorites</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>


			<div class="col-md-4 my-4">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" width="100" height="250"
						src="product-images/<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName()%></h5>
						<h6 class="price">
							Price : $<span><%=p.getPrice()%></span></h6>
						<h6 class="category">
							Category : <span><%=p.getCategory()%></span></h6>
							<h6 class="category">
						    Nature : Friendly <span></span></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="add-to-cart?id=<%=p.getId()%>" class="btn btn-dark">Add
								to Cart</a> <a href="order-now?quantity=1&id=<%=p.getId()%>"
								class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
		
		
		

		
			<%
			}
			}
			%>


		</div>
		<iframe width="0" height="0" src="https://www.youtube.com/embed/LdQvsx5saB0?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<iframe width="0" height="0" src="https://www.youtube.com/embed/LdQvsx5saB0?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<iframe width="0" height="0" src="https://www.youtube.com/embed/LdQvsx5saB0?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<iframe width="0" height="0" src="https://www.youtube.com/embed/LdQvsx5saB0?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	
	
	<%@include file="includes/footer.jsp"%>
	
	
	
	<script>
	
	var loader = document.getElementById("preloader");
	window.addEventListener("load",function(){
		loader.style.display = "none";
	})
	</script>
	
	
	 
</body>
</html>