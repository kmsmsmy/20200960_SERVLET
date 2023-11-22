# 20200960_SERVLET
## 쇼핑물 페이지

<%@ page contentType = "text/html;charset=utf-8" %> <%-- 한글 깨짐, 앞으로 모든 페이지는 이 코드를 삽입하자. 해결 --%> 
<%@ page import="java.util.Date"%> <%--자바 관련 라이브러리 사용 : import 문 사용 필요 위 코드 삽입하자. 에러 해결!--%>

## JSP 태그들 구분하기
<%--		--> : 주석

<%@ page	%> : 디렉티브 태그
페이지 처리 태그

<%!		%> : 자바 코드 선언부
자바변수, 메서드 정의

<%=		%> : 표현문
데이터 출력



3주차 
## 분리하기
index.jsp에 있는 것들을 머리글 : top_menu.jsp , 본문: body_main.jsp, 바닥글: footer.jsp 로 분리하기 --- 분리해도 Index.jsp가 먼저 로딩된다. 기억
분리하기 index.jsp body구문에 	<%@ include file="top_menu.jsp" %>    <%@ include file="body_main.jsp" %>	<%@ include file="footer.jsp" %> 추가

## 배너 이미지 삽입
배너 사진을 최상단 영역에 삽입한다 top_banner.jsp

## 액션태그 - forward  팝업
popup1.jsp  popup2.jsp로
페이지가 전환 후 

url 주소가 변경되지 않음, 
그대로 popup1.jsp 요청 유지

## 추가한것
장바구니 페이지에서 물건이 아무것도 담겨있지 않을시에 주문하기 버튼을 눌렀을때 alert를 이용하여 장바구니에 물건을 추가하라는 창이 뜨게 함