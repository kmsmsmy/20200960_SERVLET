<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%
    // (기존 코드는 그대로 두고 이 부분을 추가합니다.)
    String timestamp = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date());
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birthhyy = request.getParameter("birthhyy");
    String birthhmm = request.getParameter("birthhmm");
    String birthhdd = request.getParameter("birthhdd");
    String birth = birthhyy + "-" + birthhmm + "-" + birthhdd;
    String mail1 = request.getParameter("mail1");
    String mail2 = request.getParameter("mail2");
    String mail = mail1 + "@" + mail2;
    String phone1 = request.getParameter("phone1");
    String phone2 = request.getParameter("phone2");
    String phone3 = request.getParameter("phone3");
    String phone = phone1 + "-" + phone2 + "-" + phone3;
    String zipcode = request.getParameter("zipcode");
    String roadAddress = request.getParameter("roadAddress");
    String jibunAddress = request.getParameter("jibunAddress");
    String detailAddress = request.getParameter("detailAddress");
    String extraAddress = request.getParameter("extraAddress");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="../top_menu.jsp"/>
<div class="jumbotron">
	<div class="container">
    	<h1 class="display-3">회원가입</h1>
    </div>
</div>
<div class="container">
	<form action="processAddMember.jsp" method="post">
		<div class="form-group row">
			<label class="col-sm-2">아이디</label>
			<div class="col-sm-3">
				<input name="id" class="form-group" placeholder="ID" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input type="password" name="password" class="form-group" placeholder="PASSWORD" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">이름</label>
			<div class="col-sm-3">
				<input name="name" class="form-group" placeholder="NAME" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">성별</label>
			<div class="form-check form-check-inline">
				<input type="radio" value="남자" name="gender" class="form-check-input" checked>
				<label class="from-check-label">남자</label>
			</div>
			<div class="form-check form-check-inline">
				<input type="radio" value="여자" name="gender" class="form-check-input">
				<label class="from-check-label">여자</label>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">생일</label>
			<div class="col-sm-3">
				<input name="birthhyy" maxlength="4" size="6" class="form-group" placeholder="년(4자)" required>
				<input name="birthhmm" maxlength="2" size="4" class="form-group" placeholder="월" required>
				<input name="birthhdd" maxlength="2" size="4" class="form-group" placeholder="일" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">이메일</label>
			<div class="col-sm-10">
				<input name="mail1" maxlength="50" required>@
				<select name="mail2">
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="gmail.com">gmail.com</option>
					<option value="nate.com">nate.com</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">전화번호</label>
			<div class="col-sm-5">
				<select name="phone1" required>
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>
				-<input name="phone2" maxlength="4" size="4"required>
				-<input name="phone3" maxlength="4" size="4"required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">우편번호</label>
			<div class="col-sm-3">
				<input name="zipcode" class="from-control" placeholder="우편번호">
				<input type="button" onclick="Postcode()" value="우편번호 찾기"><br>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">도로명주소</label>
			<div class="col-sm-3">
				<input name="roadAddress" class="from-control" placeholder="도로명주소">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">지번주소</label>
			<div class="col-sm-3">
				<input name="jibunAddress" class="from-control" placeholder="지번주소">
			</div>
		</div>
		<span id="guide" style="color:#999;display:none"></span>
		<div class="form-group row">
			<label class="col-sm-2">상세주소</label>
			<div class="col-sm-3">
				<input name="detailAddress" class="from-control" placeholder="상세주소">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">참고항목</label>
			<div class="col-sm-3">
				<input name="extraAddress" class="from-control" placeholder="참고항목">
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="등록">
                <input type="reset" class="btn btn-warning" value="취소" onclick="goBack()">
			</div>
		</div>
	</form>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function goBack() {
        // 이전 페이지로 이동
        window.history.back();
    }
    function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
    
<%
    // DB 연결 관련 정보
    String jdbcUrl = "jdbc:mysql://localhost:3306/coupang_20200960?useSSL=false";
    String dbId = "root";
    String dbPassword = "123123";
    
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // DB 연결
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(jdbcUrl, dbId, dbPassword);

        // 회원 가입 정보를 DB에 저장하기 위한 쿼리 작성
        String insertQuery = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(insertQuery);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, gender);
        pstmt.setString(5, birth);
        pstmt.setString(6, mail);
        pstmt.setString(7, phone);
        pstmt.setString(8, zipcode);
        pstmt.setString(9, roadAddress);
        pstmt.setString(10, jibunAddress);
        pstmt.setString(11, detailAddress);
        pstmt.setString(12, extraAddress);
        pstmt.setString(13, timestamp.toString());  // 현재 시간을 가입일자로 사용

        // 쿼리 실행
        pstmt.executeUpdate();

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // DB 연결 해제
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>