<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" interity="sha384-ggOyR0iXCbMqv3Xipmo34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>상품목록</title>
</head>
<body>
    <jsp:include page = "menu.jsp" />
    <div class = "jumbotron">
        <div class = "container">
            <h1 class = "display-3">상품목록</h1>
        </div>
    </div>
    
    <%
       ProductRepository dao = ProductRepository.getInstance();
       ArrayList<Product> listOfProducts = dao.getAllProducts();
    %>
    
    <div class = "container">
         <div class = "row" align = "center">
              <%
                  for(int i = 0; i<listOfProducts.size();i++){
                	  Product product = listOfProducts.get(i);
              %>
                  <div class = "col-md-4">
                       <img src = "./resources/images/<%=product.getFilename()%>" style="width:100%">
                       <h3><%=product.getPname() %></h3>
                       <p><%=product.getDescription() %>
                       <p><%=product.getUnitPrice() %>
                       <p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role ="button">상세 정보</a>
                  </div>
              <%
                  }
              %>
         
         </div>
         <hr>
    </div>
    <jsp:include page = "footer.jsp" />
</body>
</html>