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

13주차
고객센터 게시판에서 취소버튼을 누르면 취소하시겠습니까?라는 문구가 나오고 board_list.jsp로 돌아오게 설정

회원가입 페이지
이메일 입력하는 칸에 @를 입력하지 않으면 회원가입하지 못하게 추가함


## 4주차 연습문제
screenshot에 사진
날짜 출력 소스 분리하기
ShowTime.java 파일

package example;
import java.util.Date; // 날짜 관련 정보 얻기

public class ShopTime {
    public String timenow() {
       Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours(); // 시간
        int minute = day.getMinutes(); // 분
        int second = day.getSeconds(); // 초
        hour=hour+9; // 대한민국 시간으로 계산 -- 추가한것
        if (hour / 12 == 0) {
            am_pm = "AM"; // 오전 판단
        } else {
            am_pm = "PM"; // 오후 판단
            hour = hour - 12; 
        }
        String CT = hour + ":" + minute + ":" + second + " " + am_pm; // 출력 문자열 조합
        return CT; // 문자열 리턴
    }
}

footer.jsp 파일

<%@ page contentType="text/html; charset=utf-8"%>	
<%@ page import="example.*" %>  
<footer class="container">
    <p> <br> &copy; 쇼핑몰 대표 : 강민서, 고유번호 : 20200960, 연락처 : kangminseo@naver.com <br> 
        <% ShopTime time = new ShopTime(); %>    
        오늘 날짜와 시간 : <%=time.timenow() %> <%-- ShotTime.java에 날짜 불러옴--%>
    </p>
</footer>

## 5주차 연습문제
상품을 9가지 추가, 이미지도 출력되게 할것
screenshot에 사진 

## 6주차 연습문제
exception/main_server_downtime.jsp 파일
<%@ page contentType = "text/html;charset=utf-8" %>
<html>
    <head>
        <title> Exception</title>
    </head>
    <body>
        errorCode 404 오류가 발생했습니다.
    </body>
</html>
web.xml파일
    <!-- 404 에러 페이지 설정 -->
    <error-page>
        <error-code>404</error-code>
        <location>/exception/main_server_downtime.jsp</location>
    </error-page>
    
## 9주차 연습문제
스크린샷
아이디: Admin으로 변경
패스워드 123654으로 변경
관리자 페이지 로그인창 나오게 설정

## 10주차 연습문제
날짜 에러 수정 완료(스크린샷)

장바구니 페이지 이미지 에러 수정 완료
-- cart용 image폴더 생성

세션 전체 삭제
스크린샷

관리자 페이지 상세 페이지
스크린샷

## 11주차 연습문제
1번 
function validateDeliveryDate() {
            // 1. 입력 필드에서 선택한 날짜를 가져옵니다.
            var selectedDate = new Date(document.getElementById("deliveryDate").value);

           // 2. 내일 날짜를 구합니다
            var tomorrow = new Date();        // 현재 날짜 및 시간을 가지는 객체 생성     <%--11주차 연습문제 1번 내일 이후로 날짜 선택하기--%>
            tomorrow.setDate(tomorrow.getDate() + 1);     // 내일로 설정
            tomorrow.setHours(0, 0, 0, 0);        // 시간을 0시 0분 0초로 설정

            // 3. 선택한 날짜와 내일 날짜를 비교합니다.
            if (selectedDate <= tomorrow) {
                // 4. 만약 선택한 날짜가 내일 이전이거나 같다면 경고 메시지를 표시하고 false를 반환합니다.
                alert("배송일은 반드시 내일 이후여야 합니다.");
                return false;
            }
            // 5. 선택한 날짜가 내일 이후라면 true를 반환합니다.
            return true;
        }
2번 국가명을 select 박스로 설정
<div class="form-group row">
                <label class="col-sm-2">국가명</label>
                <div class="col-sm-3">
                    <select name="country" class="form-control"> <%-- 11주차 연습문제 2번 select 박스 사용하기--%>
                        <option value="한국">한국</option>
                        <option value="중국">중국</option>
                        <option value="일본">일본</option>
                        <option value="미국">미국</option>
                    </select>
                </div>
            </div>
            
3번 우편번호와 주소로 검색하기
function openDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    document.getElementById('zipCode').value = data.zonecode;
                    document.getElementById('addressName').value = data.address;
                }
            }).open();
        }
        
<div class="form-group row">
                <label class="col-sm-2">우편번호</label>
                <div class="col-sm-3">
                    <input name="zipCode" type="text" class="form-control" id="zipCode" />
                    <button type="button" class="btn btn-secondary" onclick="openDaumPostcode()">우편번호 검색</button>    <%--11주차 연습문제 3번 우편번호 검색하기--%>
                </div>
            </div>
            
            
## 12주차 연습문제
데이터베이스 상품 리스트 9개 추가(스크린샷)

관리자 패스워드 변경하기
            
UPDATE mysql.user SET password = PASSWORD('123123') WHERE user = 'root' AND host = '%'; 

## 13주차 연습문제
상품을 삭제할지 묻는다 (스크린샷)
Admin폴더에 product_delete.jsp를 생성한다

product_delete.jsp 파일
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>

<%
    String productId = request.getParameter("id");

    try {
        // 상품 조회 쿼리 작성
        String selectSql = "SELECT * FROM product WHERE p_id=?";
        pstmt = conn.prepareStatement(selectSql);
        pstmt.setString(1, productId);

        // 쿼리 실행
        rs = pstmt.executeQuery();

        // rs가 존재하면 상품 삭제 쿼리로 초기화
        if (rs.next()) {
            // 상품 삭제 쿼리 작성
            String deleteSql = "DELETE FROM product WHERE p_id=?";
            pstmt = conn.prepareStatement(deleteSql);
            pstmt.setString(1, productId);

            // 쿼리 실행
            pstmt.executeUpdate();

            // 파일 삭제
            String filePath = request.getServletContext().getRealPath("image/product/") + productId + ".jpg";
            java.io.File file = new java.io.File(filePath);
            if (file.exists()) {
                file.delete();
            }
        }

    } catch (SQLException e) {
        e.printStackTrace();
        // 예외 처리 로직 추가
    } finally {
        // 자원 해제
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }

    // 삭제 후 목록 페이지로 리다이렉트
    response.sendRedirect("product_edit.jsp?edit=delete"); // product_edit.jsp로 돌아오게 한다
%>


## 14주차 연습문제