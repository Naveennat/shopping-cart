<%@page import="com.s.connection.DbCon"%>
<%@page import="com.s.dao.OrderDao"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.s.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	DecimalFormat dcf = new DecimalFormat("#.##");
	request.setAttribute("dcf",dcf);
	User auth = (User) request.getSession().getAttribute("auth");
	List<Order> orders = null;
	if(auth != null){
		request.setAttribute("auth",auth);
	    orders = new OrderDao(DbCon.getConnection()).userOrders(auth.getId());
	}else{
		response.sendRedirect("login.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

	if(cart_list != null){
		request.setAttribute("cart_list",cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<title>Orders</title>
<%@include file="includes/head.jsp" %>
<style>

p{
text-align: center;

}
img {
  border-radius: 30%;
}

</style>


</head>
<body>
<div id="preloader"></div>
<%@include file="includes/navbar.jsp"%>
 <div class="container">
 <div class="card-header my-3">All Orders</div>
 <table class="table table-light">
 <thead>
 <tr>
 <th scope="col">Date</th>
 <th scope="col">Name</th>
 <th scope="col">Category</th>
 <th scope="col">Quantity</th>
 <th scope="col">Price</th>
 <th scope="col">Cancel</th>
 </tr>
 </thead>
 <tbody>
 <%
 if(orders != null){
	 for(Order o:orders){%>
	 <tr>
	 <td><%= o.getDate() %></td>
	 <td><%= o.getName() %></td>
	 <td><%= o.getCategory() %></td>
	 <td><%= o.getQuantity() %></td>
	 <td><%= dcf.format(o.getPrice()) %></td>
	 <td><a class="btn btn-sm btn-danger" href="cancel-order?id=<%= o.getOrderId() %>">Cancel</a></td>
	 </tr>
 <% }
 }
 %>
 
 
 
 </tbody>
 </table>
 
 </div>
 <p><img src="data:image/png;base64,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" width="120px" height="100px" class="center">
 </p><div>
 
 </div>
<%@include file="includes/footer.jsp" %>

</body>

</html>