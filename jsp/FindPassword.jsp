<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %>

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
      <form action="login.jsp">
        <section class="signup-login-box">
          <h2>비밀번호 찾기</h2>
        </section>
        <div class="input-container email">
          <label for="email">이메일</label>
          <input type="email" name="email" id="email" />
        </div>

        <div class="input-container contact">
          <label for="contact">연락처</label>
          <input type="contact" name="contact" id="contact" />
        </div>

        <button class="signup-btn" type="submit">비밀번호 찾기</button>

        <div class="login-container">
          <span> 비밀번호를 찾고 </span>
          <span></span><a href="Login.jsp"><strong>로그인</strong>하러가기</a></span>
        </div>
      </form>
    </div>
  </div>
</body>
