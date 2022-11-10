
<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>

<%--connector 파일을 찾아오는 라이브러리--%>
<%@ page import="java.sql.DriverManager" %>

<%@ page import="java.sql.ResultSet" %>
<%--데이터베이스에 연결하는 라이브러리--%>
<%@ page import="java.sql.Connection" %>

<%--SQL문을 만들어주는 라이브러리--%>
<%@ page import="java.sql.PreparedStatement" %>
<%
	
	//1. 폼에서 넘어온 데이터를 각각 처리합니다.
	//2. SQL문을 이용해서 DB에 업데이트 작업.
	//3. executeUpdate() 성공시 1을 반환, 실패시 0을 반환
	//4. 업데이트가 성공하면 세션에 저장된 이름을 변경한 후에
	//	update_success.jsp로 리다이렉트
		
	//      업데이트에 실패하면, update_fail.jsp로 리다이렉트

	request.setCharacterEncoding("UTF-8");

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String contact = request.getParameter("contact");
	String part = request.getParameter("part");


    // 데이터베이스 연결 "서버","사용자","비밀번호"
    String url = "jdbc:mysql://localhost:3306/calendar";
    String uid = "chan";
    String upw = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
	

	String sql = "update user set password = ?, name = ?, contact = ?, part = ?" + "where email = ?";
	
	try{
		// 드라이버 호출
        Class.forName("com.mysql.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, contact);
		pstmt.setString(4, part);
        pstmt.setString(5, email);

		
		int result = pstmt.executeUpdate();
		
		if(result == 1){
			session.setAttribute("user_name", name);
			
			response.sendRedirect("UpdateSuccess.jsp");
		} else{
			response.sendRedirect("UpdateFail.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
		response.sendRedirect("UpdateFail.jsp");
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