<%@ page contentType="text/html; charset=utf-8"%>  <%-- 띄어쓰기 조심할것 --%>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		메뉴
  		</button>
        
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">설정</a>
            <a class="dropdown-item" href="index.jsp">홈페이지</a>
        
        </div>
	</div>
    
    <div>
        <img src="image/COPANG.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
	        <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class="navbar-brand" href="login/login_user.jsp">로그인</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="member/member_join_process.jsp">회원가입</a>
            <a class="navbar-brand" href="Admin/index_ad.jsp">관리자모드</a>
		</div>
	</div>
</nav>
