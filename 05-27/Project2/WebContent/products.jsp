
<%@page import="dao.ProductRepository"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Product List</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="background: #B2CCFF;">
		<div class="container">
			<h1 class="display-3">Work List</h1>
		</div>
	</div>
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
		String Category = request.getParameter("type");
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
					if (product.getCategory().equals(Category)) {
			%>
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title"><%=product.getPname()%></h5>
					<h6 class="card-subtitle mb-2 text-muted">
						<%
							if (product.getCategory().equals("IT")) {
										out.println("IT · Programming");
									} else {
										out.println(product.getCategory());
									}
						%>
					</h6>
					<p class="card-text"><%=product.getDescription()%></p>
					<a href="product.jsp?q=<%=product.getProductId()%>&w=<%= product.getCategory() %>"
						class="card-link">일하러 가기</a>
				</div>
			</div>
			<%
				}
					for (int j = 0; j < 4; j++) {
						out.println("&nbsp;");
					}
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>

