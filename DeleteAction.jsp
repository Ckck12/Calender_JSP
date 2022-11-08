<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. id값은 세션에서 얻습니다.
	String email = (String)session.getAttribute("user_email");
    
    // 데이터베이스 연결 "서버","사용자","비밀번호"
    String url = "jdbc:mysql://localhost:3306/calendar";
    String uid = "chan";
    String upw = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "delete from user where email = ?";
	
	try{

        Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		
		// sql 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			session.invalidate(); // 세션에 정보삭제
			response.sendRedirect("Login.jsp");			
		} else{ // 실패
			response.sendRedirect("test.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("test.jsp");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>

</html>