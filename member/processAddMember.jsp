<%@page import="java.util.Date"%>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String year = request.getParameter("birthhyy");
	String month = request.getParameter("birthhmm");
	String day = request.getParameter("birthhdd");
	String birth = year+"/"+month+"/"+day;
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String mail = mail1+"@"+mail2;
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1+"-"+phone2+"-"+phone3;
	String zipcode = request.getParameter("zipcode");
	String roadAddress = request.getParameter("roadAddress");
    String jibunAddress = request.getParameter("jibunAddress");
    String detailAddress = request.getParameter("detailAddress");
    String extraAddress = request.getParameter("extraAddress");

	/* 회원 가입일자 타임스템프 정보 생성 */
	/* JDBC에서 날짜시간타입은 Timestamp이므로 Date타입 변환 */
	Date currentDatetime = new Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());//long	타입의 값의 매개변수 생성
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
%>


<%-- 데이터 셋 설정(DB연결) --%>
    String jdbcUrl = "jdbc:mysql://localhost:3306/coupang_20200960?useSSL=false";
    String dbId = "root";
    String dbPassword = "123123";

DataSource dataSource = null;

    try {
        InitialContext context = new InitialContext();
        dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
    } catch (NamingException e) {
        e.printStackTrace();
}

if (dataSource == null) {
    throw new SQLException("Data source not found");
}
%>
    
	 
<%-- 입력처리 --%>	 
<sql:query dataSource="${dataSource}">
    insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)

    <sql:param value="<%=id %>"/>
    <sql:param value="<%=password %>"/>
    <sql:param value="<%=name %>"/>
    <sql:param value="<%=gender %>"/>
    <sql:param value="<%=birth %>"/>
    <sql:param value="<%=mail %>"/>
    <sql:param value="<%=phone %>"/>
    <sql:param value="<%=zipcode %>"/>
    <sql:param value="<%=roadAddress %>"/>
    <sql:param value="<%=jibunAddress %>"/>
    <sql:param value="<%=detailAddress %>"/>
    <sql:param value="<%=extraAddress %>"/>
    <sql:param value="<%=timestamp.toString() %>"/>

</sql:query>
	 
<%-- 입력 후 페이지 이동 처리, response.sendRedirect --%>
<sql:query var="result" dataSource="${dataSource}">
    SELECT COUNT(*) as count FROM member WHERE id = '<%=id %>'
</sql:query>

<c:if test="${result.rows[0].count > 0}">
    <%-- 회원가입 성공 시 login_user.jsp로 이동 --%>
    <% response.sendRedirect("../login/login_user.jsp"); %>
</c:if>