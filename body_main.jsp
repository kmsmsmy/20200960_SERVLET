<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
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
	    ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
    %> 	
 
        
        
        
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                 <div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="..."> <%--image 폴더의 product폴더 안의 사진을 불러오기--%>
                    <div class="card-img-overlay">
                        <h5 class="card-title">자전거 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                 </div>

				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                    
                    
                   

			</div>
			<%
				} 
			%>
		</div>
		<hr>
	</div>
<%-- div 닫지 않았음--%>
       
        
<div class="card bg-dark text-white">
    <img src="image/java christmas.jpg" class="card-img" alt="..."> <%-- 크리스마스 이미지 업로드--%>
    <div class="card-img-overlay">
    <h5 class="card-title">메리크리스마스</h5>  <%-- 크리스마스 이미지에 메리크리스마스 글씨 입력--%>
    </div>
</div>
