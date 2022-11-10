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
      <form action="../Action/SignupAction.jsp" id="form">
        <section class="signup-login-box">
          <h2>회원가입</h2>
        </section>
        <div class="input-container name">
          <label for="name">이름</label>
          <input type="text" name="name" id="name" />
        </div>

        <div class="input-container email">
          <label for="email">이메일</label>
          <input type="email" name="email" id="email" />
        </div>

        <div class="input-container password">
          <label for="password">비밀번호</label>
          <input type="password" name="password" id="password" />
        </div>

        <div class="input-container contact">
          <label for="contact">연락처</label>
          <input type="contact" name="contact" id="contact" />
        </div>

        <!-- 부서 오디오 선택방식으로 -->
        <div class="input-container part">
          <label for="part">부서</label>
          <div class="dropdown">
            <select name="part" id="part" class="dropbtn">
              <option value="none">=== 선택 ===</option>
              <option value="개발" value="개발" selected>개발</option>
              <option value="디자인" value="디자인">디자인</option>
              <option value="설계" value="설계">설계</option>
            </select>
          </div>
        </div>

        <div class="login-container">
          <span>이미 회원이신가요?</span>
          <span><a href="Login.jsp">로그인</a></span>
        </div>

        <button class="signup-btn" type="button" onclick="CheckSignUpEvent()">회원가입</button>
      </form>
    </div>
  </div>

  <script>
    function CheckSignUpEvent() {
      if (document.getElementById("email").value == "") {
        alert("이메일을 입력해주세요.");
        document.getElementById("email").current.focus();
      } else if (document.getElementById("password").value == "") {
        alert("비밀번호를 입력해주세요.");
      } else if (document.getElementById("password").value == "") {
        alert("비밀번호를 입력해주세요.");
      } else if (document.getElementById("password").value == "") {
        alert("비밀번호를 입력해주세요.");

        document.getElementById("password").current.focus();
      } else document.getElementById("form").submit();
    }
  </script>
</body>
