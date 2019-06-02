<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.DecimalFormatSymbols"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">More Info.</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("q");
		String w = request.getParameter("w");
		Product product = productDAO.getProductById(id);
		DecimalFormatSymbols dfs = new DecimalFormatSymbols(Locale.KOREA);
		String cs = dfs.getCurrencySymbol();
		DecimalFormat df = new DecimalFormat(cs + "#,##0");
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p>
					<b>의뢰 번호 : </b><span class="badge badge-danger"> <%=product.getProductId()%></span>
				<p>
					<b>의뢰인</b> :
					<%=product.getManufacturer()%>
				<p>
					<b>분야</b> :
					<%
						if (product.getCategory().equals("IT")) {
							out.println("IT · Programming");
						} else {
							out.println(product.getCategory());
						}
					%>
				<p>
					<b>채용 인원</b> :
					<%=product.getUnitsInStock()%></p>
				<b>예상 보수 : </b>
				<h4><%=df.format(product.getUnitPrice())%>~
				</h4>
				<p>
					<a href="payment.jsp?q=<%=product.getProductId() %>&w=<%=w %>" class="btn btn-info"> 계약 의뢰 &raquo;</a> <a
						href="products.jsp?type=<%=w %>" class="btn btn-secondary" style="margin-left: 20px;">
						의뢰 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
