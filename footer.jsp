<%@ page contentType="text/html; charset=utf-8"%>	
<%@ page import="example.*" %>  <%-- 3주차 응용문제 --%>


<footer class="container">
    
    <p> <br> &copy; 쇼핑몰 대표 : 강민서, 고유번호 : 20200960, 연락처 : kangminseo@naver.com <br> 
        <% ShopTime time = new ShopTime(); %>    
        오늘 날짜와 시간 : <%=time.timenow() %> <%-- ShotTime.java에 날짜 불러옴--%>
    </p>
</footer>