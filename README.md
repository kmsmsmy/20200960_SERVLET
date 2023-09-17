# 20200960_SERVLET
## 쇼핑물 페이지
[index.jsp : 실행/수정 완료](https://g-servlet-kuanl.run.goorm.site/) 

2주차

<%@ page contentType = "text/html;charset=utf-8" %> <%-- 한글 깨짐, 앞으로 모든 페이지는 이 코드를 삽입하자. 해결 --%> 

<%@ page import="java.util.Date"%> <%--자바 관련 라이브러리 사용 : import 문 사용 필요 위 코드 삽입하자. 에러 해결!--%>

## 기본 폴더 및 파일 역할

.git : 깃 허브 관련 설정
META-INF : 서버 전역 설정
content.xml (설정 파일)
WEB-INF : 주요 웹 APP 설정 및 클래스
classes
example (패키지 이름)
서블릿 클래스.class (바이트 코드)
lib (외부 라이브러리)
src (소스 코드)
example (패키지 이름)
서블릿이름.java (자바 코드)
index.jsp (웹 페이지 메인)

## JSP와 자바 APP는 실행에 차이 존재
JSP : 페이지 요청시에 컴파일(즉시 적용)

자바코드 : 서버 재시작 필요
새로고침 해보자. 적용?
서버 종료/시작 다시 해보자. 적용됨

## JSP 태그들 구분하기
<%--		--> : 주석
JSP 페이지 주석

<%@ page	%> : 디렉티브 태그
페이지 처리 태그

<%!		%> : 자바 코드 선언부
자바변수, 메서드 정의

<%=		%> : 표현문
데이터 출력

23년 9월 6일 쇼핑몰 메인 페이지
[index.jsp : 실행/수정 완료](https://g-servlet-kuanl.run.goorm.site/) 


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

## 3주차 문제 날짜 출력 소스 분리하기
footer.jsp

<%@ page import="example.*" %>
<%@ page contentType="text/html;charset=utf-8"%>	
<footer class="container">
    
    <p> <br> &copy; 쇼핑몰 대표 : 강민서, 고유번호 : 20200960, 연락처 : kangminseo@naver.com <br> 
        <% ShopTime time = new ShopTime(); %>    
        오늘 날짜와 시간 : <%=time.timenow() %> <%-- ShotTime.java에 날짜 불러옴--%>
    </p>
</footer>