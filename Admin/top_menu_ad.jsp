<%@ page contentType="text/html; charset=utf-8"%>  <%-- 띄어쓰기 조심할것 --%>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		메뉴
  		</button>
        
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">설정</a>
            <a class="dropdown-item" href="index_ad.jsp">홈페이지</a>
        
        </div>
	</div>
    
    <div>
        <img src="image\COPANG.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index_ad.jsp">홈페이지</a> <%--<a class="navbar-brand" href="index_ad.jsp">을 점 추가하여 수정한것--%>
            <a class="navbar-brand" href="index_ad.jsp">회원 보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>        <%--로그인하기 전에는 등록페이지로 못가게 설정하고 싶음--%>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
            <a class="navbar-brand" href="../login/logout.jsp" class="btn btn-sm btn-success pull-right">로그아웃</a>


		</div>
	</div>
</nav>
