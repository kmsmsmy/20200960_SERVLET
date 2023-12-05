<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type ="text/javascript" src ="../js/validation.js"></script>
        <title>회원 정보</title>
        <script type="text/javascript">
            function deleteConfirm(id) {
                if (confirm("해당 회원을 삭제합니다!!") == true)
                   location.href = "member_delete_process.jsp?id=" + id;
                else
                   return;
            }
        </script>
        <%
                String edit = request.getParameter("edit");
        %>
    </head>
    <body>
        
        
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">회원 정보</h1>
            </div>
        </div>

        <div class="container">
            <div class="row" align="center">
                <%@ include file="../db/db_conn.jsp"%>
                <%
                    String sql = "select * from member";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    while (rs.next()) {
                %>
                <div class="col-md-4" style="margin-bottom:10px;">
                    <h3><%=rs.getString("joinname")%>님</h3>
                    <br>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">아이디 : </b><%=rs.getString("joinid")%></p>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">비밀번호 : </b><%=rs.getString("joinpassword")%></p>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">성별 : </b><%=rs.getString("joingender")%></p>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">생년월일 : </b><%=rs.getString("joinbirth")%></p>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">메일 : </b><%=rs.getString("joinmail")%></p>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">번호 : </b><%=rs.getString("joinphone")%></p>
                    <p style="text-align:left"><b style="display:inline-block;width:120px;">주소 : </b><%=rs.getString("joinaddress")%></p>
                   
                     <%
                                // 'edit' 파라미터가 null이 아닌지 확인 후에 접근
                                if (edit != null && edit.equals("m_update")) {
                            %>
                                <a href="member_update.jsp?id=<%=rs.getString("joinid")%>" class="btn btn-success" role="button">수정 &raquo;></a>
                            <%
                                } else if (edit != null && edit.equals("m_delete")) {
                            %>
                                <a href="#" onclick="deleteConfirm('<%=rs.getString("joinid")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
                            <%
                                }
                            %>
                </div>
                    <%
                    }
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
                %>
            </div>
            <hr>
        </div>
        <jsp:include page="../Admin/footer_ad.jsp" />
    </body>
</html>