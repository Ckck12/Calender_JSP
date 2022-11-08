<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>

<%--connector 파일을 찾아오는 라이브러리--%>
<%@ page import="java.sql.DriverManager" %>

<%--데이터베이스에 연결하는 라이브러리--%>
<%@ page import="java.sql.Connection" %>

<%--SQL문을 만들어주는 라이브러리--%>
<%@ page import="java.sql.PreparedStatement" %>


<% 
    // 전 페이지에서 받아온 값의 한글을 꺠지지 않게 해줌
    request.setCharacterEncoding("UTF-8");

    // 전 페이지에서 받아온 값 저장
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String contact = request.getParameter("contact");
    String part = request.getParameter("part");


    // 데이터베이스 연결 ("서버","사용자","비밀번호")
    String url = "jdbc:mysql://localhost:3306/calendar";
    String uid = "chan";
    String upw = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;

    //SQL문 준비
    String sql = "INSERT INTO user(name,email,password,contact,part) VALUES(?,?,?,?,?);";
    try{
            // 1. driver 로드
            Class.forName("com.mysql.jdbc.Driver");
            // 2. conn 생성
            conn = DriverManager.getConnection(url,uid,upw);

            // 3. 쿼리 작성 
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, contact);
            pstmt.setString(5, part);

            // 4. 쿼리문 실행
            int result = pstmt.executeUpdate();

            if(result==1) {//성공시
                response.sendRedirect("Login.jsp");
                            } 

            else{//실패시
                response.sendRedirect("SignupAction.jsp");
                }
            }

    catch(Exception e){
                    e.printStackTrace();
                        }

    finally{
                try{
                    if(conn != null) conn.close();
                    if(pstmt != null) pstmt.close();
                    } 

                catch(Exception e){
                    e.printStackTrace();
                                    }
            }
        

%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 

    <p>이름은: <%= name%></p>
    <p>이메일은: <%=email%></p>
    <p>비밀번호는: <%=password%></p>
    <p>연락처는: <%=contact%></p>
    <p>부서는: <%=part%></p>

    <!-- <script>
        alert("회원가입 성공")   
        location.href="index2.jsp"
    </script> -->
    
</body>
</html>