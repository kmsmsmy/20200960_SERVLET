<%@ page contentType = "text/html;charset=utf-8" %> <%-- 한글 깨짐, 앞으로 모든 페이지는 이 코드를 삽입하자. 해결 --%> 
<%-- 주석 처리 방법--%>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>   <%-- JSP 주석 처리 --%>
   <nav class="navbar navbar-expand  navbar-dark bg-dark">
      <div class="container">
         <div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp">Home</a>
         </div>
      </div>
   </nav>
    <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
    <%! String greeting = "Welcome to Web Shopping Mall";
      String tagline = "Welcome to Web Market!";%>
   <div class="jumbotron">
      <div class="container">
         <h1 class="display-3">
            <%=greeting%>
         </h1>
      </div>
   </div>   
   <div class="container">
      <div class="text-center">
         <h3>
            <%=tagline%>
         </h3>
      </div>
      <hr>
   </div>   
   <footer class="container">
      <p>&copy; WebMarket</p>
   </footer>
</body>
</html>
<%@ page import="java.util.Date"%> <%--자바 관련 라이브러리 사용 : import 문 사용 필요 위 코드 삽입하자. 에러 해결!--%>



<%-- 최하단 상태바에 날짜 출력 자바 코드를 추가 작성--%>    
<%
   Date day = new java.util.Date();
   String am_pm;
   int hour = day.getHours();
   int minute = day.getMinutes();
   int second = day.getSeconds();
   if (hour / 12 == 0) {
      am_pm = "AM";
   } else {
      am_pm = "PM";
      hour = hour - 12;
   }
   String CT = hour + ":" + minute + ":" + second + " " + am_pm;
   out.println("현재 접속  시각: " + CT + "\n");
%>
