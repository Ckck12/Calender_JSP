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

    // 전 페이지에서 받아온 값 저장
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    //쿠키 사용법
    //String idCheck = request.getParameter("idCheck");

    // 아이디 저장 쿠키 및 로그인 제약
    //if (email.equals("pchan1018@naver.com") && password.equals("1234")) {
    //    Cookie cookie = new Cookie("user_email",email);
    //    cookie.setMaxAge(30);
    //    response.addCookie(cookie);

    // 이메일 기억하느 쿠키
    //    if(idCheck != null) {
    //        Cookie check = new Cookie("idCheck",email);
    //        check.setMaxAge(900); //15분
    //        response.addCookie(check); 
    //    }
    //    response.sendRedirect("test.jsp");
    //    }
    //    else if(!email.equals("pchan1018@naver.com")){
    //        response.sendRedirect("Login.jsp");
    //    }
    //    else if(!password.equals("1234")){
    //        response.sendRedirect("Login.jsp");
    //    }


    // 데이터베이스 연결 ("서버","사용자","비밀번호")
    String url = "jdbc:mysql://localhost:3306/calendar";
    String uid = "chan";
    String upw = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "select * from user where email = ? and password =?";

    try{
        // 1. driver 로드
        Class.forName("com.mysql.jdbc.Driver");
        // 2. conn 생성
        conn = DriverManager.getConnection(url,uid,upw);

        // 3. pstmt 생성
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, password);

        rs = pstmt.executeQuery();

        if(rs.next()){// 로그인 성공인증의 수단 session
            email = rs.getString("email");
            String name = rs.getString("name");
            String part = rs.getString("part");

            session.setAttribute("user_email", email);
            session.setAttribute("user_name", name);
            session.setAttribute("user_part", part);

            response.sendRedirect("Main.jsp");
                    }
        else {
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


    //세션으로 기억
    //String email = request.getParameter("email");
    //String password = request.getParameter("password");
    //String name = request.getParameter("name");
    //String part = request.getParameter("part");

    //if(email.equals("pchan1018@naver.com") && password.equals("1234")) {
        session.setAttribute("user_email", email);
        //session.setAttribute("user_name", name);
        //session.setAttribute("user_part", part);

        //response.sendRedirect("test.jsp")
    //}
    //else{
        //response.sendRedirect("Login.jsp");
    //}


%>


<head>
    <meta chaquery.executeUpdate()et="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 
    <p>전송된 아이디: <%= email%></p>
    <p>전송된 비밀번호: <%= password%></p>


</body>
</html>