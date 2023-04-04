<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
<style>
body{
 background: url(https://img.freepik.com/free-vector/blue-pink-halftone-background_53876-99004.jpg?w=2000);  
 
  
 /*  background: -webkit-linear-gradient(left, #7579ff, #b224ef); */
  font-family: 'Nunito', sans-serif;
}
.card-header{
background-color: #D7D7D7;
}
.nav-item:hover{
 background-color: #67e6dc;
  border-radius: 3px;
  padding: 0px;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 5px 0px, rgba(0, 0, 0, 0.1) 0px 0px 1px 0px;
   
 
/* background-color: #D7D7D7; */
/* display: cover; */
/* border-radius: 3px; */
}


</style>


<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs6VFz-79Z6WHrhLs1QhgxDbaI7B6XLz2au0c69fPXew&s" width="30" height="30">Pets-Cart</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			 <form class="form-inline my-3 my-lg-0">
      <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp"><i class="las la-home"></i>Home <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="cart.jsp"><i class="las la-shopping-cart"></i>Cart<span class="badge badge-danger">${cart_list.size()}</span></a>
					</li>
					<%
					if(auth != null){%>
						<li class="nav-item"><a class="nav-link" href="order.jsp"><i class="las la-shopping-bag"></i>Orders</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Log-out"><i class="las la-sign-out-alt"></i>Logout</a></li>
					<%} else{%>
						<li class="nav-item"><a class="nav-link" href="login.jsp"><i class="lar la-user-circle"></i>Login</a>
						</li>
					<% }
					%>
				
					
					
				</ul>
			
		</div>
		</div>
	</nav>
	
	
	
	
	