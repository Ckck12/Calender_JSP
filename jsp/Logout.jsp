<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>

<%
    //인증정보(세션삭제)
    //리다이렉트

    session.invalidate();
    response.sendRedirect("Login.jsp");

%>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=\, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>

  </body>
</html>