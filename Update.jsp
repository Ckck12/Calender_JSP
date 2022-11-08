<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>


<% 
    // 전 페이지에서 받아온 값의 한글을 꺠지지 않게 해줌
    request.setCharacterEncoding("UTF-8");
%>

<%
    //전달받은 데이터 받기
    
    String email = (String)request.getAttribute("email");
    String name = (String)request.getAttribute("name");
    String part = (String)request.getAttribute("part");
    String password = (String)request.getAttribute("password");
    String contact = (String)request.getAttribute("contact");

%>



<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>정보 수정페이지</h2>
	
	<form action="UpdateAction.jsp" method="post">
		이메일:<input type="text" name="email" value="<%=email %>"><br/>
		비밀번호:<input type="password" name="password"  value="<%=password %>"><br/>
		이름:<input type="text" name="name" value="<%=name %>"><br/>
		전화번호:<input type="text" name="contact" value="<%=contact %>"><br/>
        부서: <input type="text" name="part" value="<%=part%>"><br/>

		<input type="submit" value="수정">
        <input type="submit" value="탈퇴">
	</form>
	

</body>
</html>