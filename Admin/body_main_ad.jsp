<%@ page contentType="text/html; charset=utf-8"%> <%-- 한글 깨짐, 앞으로 모든 페이지는 이 코드를 삽입하자. 해결 --%> 
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> <%-- 띄어쓰기 조심할것--%>

<%! String greeting = "현재 페이지는 자전거 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

<div class="container">
    <div class="jumbotron">
	    <div class="container">
	    	<h3 class="display-4">
	    		<%=greeting%>
            </h3>
		</div>
	</div>

	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
        
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                 <div class="card bg-dark text-white">
                     <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="..." height="250"> <%--admin 폴더안의 image에서 빼온다음에 바깥의 image 폴더에 업로드--%>

                 </div>

				<h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%></p>
                <p><%=product.getUnitPrice()%>원</p>
                <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
       
			</div>
			<%
				} 
			%>
		</div>
		<hr>
	</div>
<%-- div 닫지 않았음--%>

        
    <div class="card bg-dark text-white">
    <img src="image/bike.jpg" class="card-img" alt="..."> <%-- 자전거 이미지 업로드--%>
    <div class="card-img-overlay">
    <h5 class="card-title">FIND YOUR BIKE</h5>  <%-- 자전거 이미지에 글씨 입력--%>
    </div>
        
        <div class="list-group">
          <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
            MTB 자전거
          </a>
          <a href="#" class="list-group-item list-group-item-action">
            GRAVEL 자전거
          </a>
          <a href="#" class="list-group-item list-group-item-action">
            ROAD 자전거
          </a>
          <a href="#" class="list-group-item list-group-item-action">
            ELECTRIC 자전거
          </a>
          <a href="#" class="list-group-item list-group-item-action">
            HYBRID 자전거
          </a>
     </div>
