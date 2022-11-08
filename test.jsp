<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %> 

<% 
    // 전 페이지에서 받아온 값의 한글을 꺠지지 않게 해줌
    request.setCharacterEncoding("UTF-8");
    //쿠키남기기
    //Cookie[] cookies = request.getCookies();

    //String email = "";
    //if(cookies != null){
    //    for (Cookie c : cookies){
    //        if(c.getName().equals("user_email")){
    //            email = c.getValue();
    //            break;
    //        }
    //    }
    //}

    //if(email.equals("")){
    //    response.sendRedirect("Login.jsp");
    //}

    //세션으로 로그인 정보기록
    if(session.getAttribute("user_email") == null){
      response.sendRedirect("Login.jsp");
    }

    String email = (String)session.getAttribute("user_email");
    String name = (String)session.getAttribute("user_name");
    String part = (String)session.getAttribute("user_part");


%>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=\, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    로그인 성공

    <%=email%>(<%=name%>)님 안녕하세요
    <%=part%>부서입니다.
    <a href="Logout.jsp">로그아웃</a><br/>
    <a href="GetInfo.jsp">정보수정</a><br/>
    <a href="DeleteAction.jsp">회원탈퇴</a><br/>
  </body>
</html>
