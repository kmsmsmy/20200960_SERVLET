<%@ page contentType = "text/html;charset=utf-8" %> <%-- 한글 깨짐, 앞으로 모든 페이지는 이 코드를 삽입하자. 해결 --%> 
<%@ page import="java.util.Date"%> <%--head가 아닌 상단에 있어도 상관없음 --%>

<html>
<head>

<script> window.open("popup/popup1.jsp", "popup", "width=365, height = 250, left = 0, top=0")</script><%--팝업창 설정하기 3주차--%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
<title>반갑습니다. 코팡몰입니다.</title>

<title>Welcome</title>
</head>
<body>   <%-- JSP 주석 처리 --%>
    <%@ include file="top_banner.jsp" %> <%-- top_banner.jsp에 분리하기 --%>
    <%@ include file="top_menu.jsp" %>   <%-- top_menu.jsp에 분리하기 --%>
	<%@ include file="body_main.jsp" %>	 <%-- body_main.jsp에 분리하기 --%>
    <%@ include file="footer.jsp" %>     <%-- footer.jsp에 분리하기 --%>  <%--자바 분리하기 3주차 연습문제 안될시 이것 삭제하기--%>

    <div class="container">
        
        <div class="text-center">
            <h3>            
                <%=tagline%>
             </h3>
        </div>
     <hr>
     </div>
    
<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
</body>
</html>

