


<!DOCTYPE html>
<html lang="en">
<head>
<title>Capstore</title>

<jsp:include page="header.jsp"></jsp:include>


<%@page import="java.io.File"%>
    <%@page import="java.io.IOException"%>
    <%@page import="java.awt.image.BufferedImage"%>
    <%@page import="javax.imageio.ImageIO"%>
    <%@page import="java.io.ByteArrayOutputStream"%>

    <%@page import="java.math.BigInteger"%>
    <%@page import="javax.xml.bind.DatatypeConverter"%>
    <%@page import="java.awt.image.BufferedImage"%>


<script>
function myFunction0() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput0");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }}
  </script>










</head>
<body>

	<!-- Header Area Start -->
		<header class="header-area clearfix">
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			
<!-- 			<!-- Amado Nav --> -->
<!-- 			<nav class="amado-nav"> -->
<!-- 				<ul> -->
<!-- 					<li class="active"><a href="index.html">Home</a></li> -->
<!-- 					<li><a href="shop.html">Shop</a></li> -->
<!-- 					<li><a href="product-details.html">Product</a></li> -->
<!-- 					<li><a href="cart.html">Cart</a></li> -->
<!-- 					<li><a href="checkout.html">Checkout</a></li> -->
<!-- 				</ul> -->
<!-- 			</nav> -->


 <%
    //write image
    try{
      String imgName="img/logo/logo.png";
      BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write( bImage, "jpg", baos );
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();                                   
        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        %>
<%--         <img  class="img-responsive" src="data:image/jpg;base64, <%=b64%>"/>                             --%>
       









	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<!--       <img  style="float:left" src="logo1.png" alt="logo"  /> -->
				
				
				<div class="footer-logo mr-50">
							<a href="homePage.jsp"><img  class="img-responsive" src="data:image/jpg;base64, <%=b64%>"/> 
						</div>
<%-- 				<img  class="img-responsive" src="data:image/jpg;base64, <%=b64%>"/>  --%>
<!-- 				<a href="homePage.jsp"><img src="img/logo/logo.png" ></a> -->
				
				 <% 
    }catch(IOException e){
      System.out.println("Error: "+e);
    } 


    %>
<!-- 				//<a class="navbar-brand" href="#">Capstore</a> -->
			</div>
			<ul class="nav navbar-nav">
				<!--       <li class="active"><a href="#">Home</a></li> -->
                 <li><a href="shop.html">Shop</a></li>
					<li><a href="product-details.html">Product</a></li>
					<li><a href="cart.html">Cart</a></li>
					<li ><a href="wishlist.html">My WishList</a></li>

				<li><a href="#">Categories</a></li>



			</ul>

		</div>


		<!--   <div id='d'> -->
		<!-- 	<br/> -->
		<!-- 	<center> -->
		<!-- 	<input type="text" id="myInput0" onkeyup="myFunction0()" placeholder="Search " title="Category"> -->

		<!-- </center> -->
		<!-- </div> -->
		<!-- Search Wrapper Area Start -->
		<div id='d' class="search-wrapper section-padding-100">

			<div class="search-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="search-content">
							<form action="#" method="get">
								<input type="search" name="search" id="search"
									placeholder="Search...">
								<button type="submit">
									<i class="fa fa-search" aria-hidden="true"></i>
									<!-- 								<img src="img/core-img/search.png" alt=""> -->
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Search Wrapper Area End -->



		<div class="btn-group pull-right">
			<button class="btn btn-default dropdown-toggle" type="button"
				id="menu1" data-toggle="dropdown">
				Welcome ${customer.customerName } <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="viewProfile.jsp">View Profile</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="#">Update Profile</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="changePassword.jsp">Change Password</a></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="changePassword.jsp">Your Orders</a></li>
				<li role="presentation" class="divider"></li>
				<li role="presentation"><a role="menuitem" tabindex="-1"
					href="#">About Us</a></li>

			</ul>

			<ul class="navbar-right">
				<li><a href="cartPage.jsp" id="cart"><i
						class="fa fa-shopping-cart"></i> Cart <span class="badge">3</span></a></li>
			</ul>
			<!--end navbar-right -->
		</div>
		</div>










	</nav>

	<div align="center">

		<p></p>
	</div>



	<div id=footer>
		<footer><jsp:include page="footer.jsp"></jsp:include></footer>
		
		
		
		
	</div>

</body>

</html>
