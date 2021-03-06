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
<title>상품 상세 정보</title>
</head>
<body>
     <jsp:include page = "menu.jsp" />
     <div class = "jumbotron">
          <div class = "container">
              <h1 class = "display-3">상품 정보</h1>
          </div>
     </div>
     <%
        String id = request.getParameter("id");
        ProductRepository dao = ProductRepository.getInstance();
        Product product = dao.getProductById(id);
     %>
     <div class = "container">
         <div class ="row">
             <div class = "col-md-5">
                 <img src = "./resources/images/<%=product.getFilename()%>" style="width:100%">
             </div>
             <div class = "col-md-6">
                 <h3><%=product.getPname()%></h3>
                 <p><%=product.getDescription() %>
                 <p><b>상품 코드 : </b><span class = "badge badge-danger"><%=product.getProductId() %></span>
                 <p><b>제조사</b> : <%=product.getManufacturer() %>
                 <p><b>분류</b>  : <%=product.getCategory() %>
                 <p><b>재고 수</b> : <%=product.getUnitsInStrock() %>
                 <h4><%=product.getUnitPrice() %>원</h4>
                 <p><a href="#" class="btn btn-info">상품 주문</a> <a href="./Products.jsp" class="btn btn-secondary">상품 목록</a>
             </div>
         </div>
     </div>
</body>
</html>