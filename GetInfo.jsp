<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>

<%--connector 파일을 찾아오는 라이브러리--%>
<%@ page import="java.sql.DriverManager" %>

<%@ page import="java.sql.ResultSet" %>
<%--데이터베이스에 연결하는 라이브러리--%>
<%@ page import="java.sql.Connection" %>

<%--SQL문을 만들어주는 라이브러리--%>
<%@ page import="java.sql.PreparedStatement" %>


<% 
    // 전 페이지에서 받아온 값의 한글을 꺠지지 않게 해줌
    request.setCharacterEncoding("UTF-8");

    String email = (String)session.getAttribute("user_email");

    // 데이터베이스 연결 ("서버","사용자","비밀번호")
    String url = "jdbc:mysql://localhost:3306/calendar";
    String uid = "chan";
    String upw = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select * from user where email = ?";

    try{
        // 1. driver 로드
        Class.forName("com.mysql.jdbc.Driver");
        // 2. conn 생성
        conn = DriverManager.getConnection(url,uid,upw);

        // 3. pstmt 생성
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);

        // 4. 실행
        rs = pstmt.executeQuery();

        if(rs.next()){// 로그인 성공인증의 수단 session
            email = rs.getString("email");
            String name = rs.getString("name");
            String part = rs.getString("part");
            String password = rs.getString("password");
            String contact = rs.getString("contact");

            //포워드 전달
            request.setAttribute("email", email);
            request.setAttribute("name", name);
            request.setAttribute("part", part);
            request.setAttribute("password", password);
            request.setAttribute("contact", password);


            //포워드 이동
            request.getRequestDispatcher("Update.jsp").forward(request, response);
        } else{//세션 만료
            response.sendRedirect("Login.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Login.jsp");
        } finally {
            try{
                if(conn != null) conn.close();
                if(pstmt != null) pstmt.close();
                if(rs != null) rs.close();
            }catch(Exception e) {
                e.printStackTrace();
            }
            
        }

%>


</html>