<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>

<%
request.setCharacterEncoding("UTF-8");

//로그인 아이디 기억 쿠키로
    Cookie[] cookies = request.getCookies();

    String lastId= "";
    if(cookies !=null) {
        for(Cookie c : cookies) {
            if(c.getName().equals("idCheck")){
                lastId = c.getValue();
                }
            }
        }
%>




<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <link rel="stylesheet" href="../css/style.css" />
</head>
<body>
  <div class="split-screen">
    <div class="left">
      <section>
        <h1 class="title">Stageus Calender</h1>
        <p class="subtitle">나만의 일정을 만들고 동료들과 일정을 공유하세요</p>
      </section>
    </div>
    <div class="right">
      <form action="../Action/LoginAction.jsp" id="form">
        <section class="signup-login-box">
          <h2>Log In</h2>
        </section>

        <div class="input-container email">
          <label for="email">Email</label>
          <input type="email" name="email" id="email" />
        </div>
        <span  style="font-size: 13.5px; ">이메일 기억하기</span>
        <input type="checkbox" name="idCheck" value="y" style="padding:0px; margin:0px; display:inline;width:15px;">

        <div class="input-container password">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" />
        </div>

        <button class="signup-btn" type="button" onclick = "checkloginEvent()" >Log In</button>
        <div class="findBox">
          <div class="findemail">
            <span
              ><a href="FindEmail.jsp"><strong>아이디 찾기</strong></a></span
            >
          </div>

          <div class="findPassword">
            <span
              ><a href="FindPassword.jsp"><strong>비밀번호 찾기</strong></a></span
            >
          </div>
        </div>
        <div class="login-container">
          <span>새로오셨나요? </span>
          <span
            ><a href="SignUp.jsp"><strong>Sign Up</strong></a></span
          >
        </div>
      </form>
    </div>
  </div>

    <script>


  function checkloginEvent() {
    if (document.getElementById("email").value == "") {
      alert("이메일을 입력해주세요.");
      document.getElementById("email").current.focus();

    }

    else if (document.getElementById("password").value == "") {
      alert("비밀번호를 입력해주세요.");
      document.getElementById("password").current.focus();


    }
    else document.getElementById("form").submit()
  }


</script>

</body>
</html>  