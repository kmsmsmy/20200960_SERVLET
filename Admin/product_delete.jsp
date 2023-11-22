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
    response.sendRedirect("product_edit.jsp?edit=delete");
%>