<%@ page language="java" contentType="text/html" pageEncoding= "utf-8" %> 
<%--connector 파일을 찾아오는 라이브러리--%>
<%@ page import="java.sql.DriverManager" %> 
<%@ page import="java.sql.ResultSet" %> 
<%--데이터베이스에 연결하는라이브러리--%> 
<%@ page import="java.sql.Connection" %> 
<%--SQL문을 만들어주는 라이브러리--%> 
<%@ page import="java.sql.PreparedStatement" %> 
<% //세션으로 로그인 정보기록 
if(session.getAttribute("user_email") == null)
{
response.sendRedirect("Login.jsp"); } 
String email = (String)session.getAttribute("user_email"); 
String name = (String)session.getAttribute("user_name"); 
String part = (String)session.getAttribute("user_part"); 
%>

<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <title>Stageus Calendar</title>
    <link rel="stylesheet" href="../css/style3.css" />
    <link href="https://fonts.googleapis.com/css2?family=Jua&amp;display=swap" rel="stylesheet" />
  </head>

  <body>
    <h1><a href="Main.jsp" class="a_head">Stageus Calendar</a></h1>

    <div class="container">
      <div class="content">
        <ul>
          <h3>사용자 정보</h3>
          <li>이름: <a href="../Action/GetInfoAction.jsp" class="atag_in_list"><%=name%>님 안녕하세요</li>
          <li>이메일: <a href="../Action/GetInfoAction.jsp" class="atag_in_list"><%=email%></li>
          <li>부서: <a href="../Action/GetInfoAction.jsp" class="atag_in_list"><%=part%></li>
        </ul>
        <a href="../Action/GetInfoAction.jsp">정보수정</a><br />
      </div>

      <main class="main_section">
        <h2 class="subtitle">일정 추가</h2>
        <div class="subsection">
          <h3>일정을 추가해 주세요</h3>
          <div class="add_schedule">
            <img class="cal_pic" src="../img/달력.png" alt="" />
            <form class="add_schedule_form" action="/AddSchedule.jsp">
              <label for="date">날짜</label>
              <input type="text" id="date" name="date" /><br />
              <label for="time">시간</label>
              <input type="text" id="time" name="time" value="12:30" /><br />
              <label for="content">내용</label>
              <input type="text" id="content" name="content" value="공부하기" /><br /><br />
              <input type="submit" value="제출" />
            </form>
          </div>

          <div class="show_schedule">

            <h3 class="year_month">2022-11</h3>

            <div class="things">
              <div class="each_schedule">
                <h3>1일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>

              <div class="each_schedule">
                <h3>2일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>

              <div class="each_schedule">
                <h3>3일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>

              <div class="each_schedule">
                <h3>4일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>

              <div class="each_schedule">
                <h3>5일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>

              <div class="each_schedule">
                <h3>6일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>

              <div class="each_schedule">
                <h3>7일</h3>
                <h4>일정: 공부하기</h4>
                <p>시간: 12:30</p>
                <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
              </div>
              </div>

              <div class="things">
                <div class="each_schedule">
                  <h3>8일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                  <div class="buttonbox">
                    <button class="update_button">수정</button>
                    <button class="delete_button">삭제</button>
                  </div>
                </div>
  
                <div class="each_schedule">
                  <h3>9일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                                  <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                </div>
  
                <div class="each_schedule">
                  <h3>10일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                                  <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                </div>
  
                <div class="each_schedule">
                  <h3>11일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                                  <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                </div>
  
                <div class="each_schedule">
                  <h3>12일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                                  <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                </div>
  
                <div class="each_schedule">
                  <h3>13일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                                  <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                </div>
  
                <div class="each_schedule">
                  <h3>14일</h3>
                  <h4>일정: 공부하기</h4>
                  <p>시간: 12:30</p>
                                  <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                </div>
                </div>

                <div class="things">
                  <div class="each_schedule">
                    <h3>15일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
    
                  <div class="each_schedule">
                    <h3>16일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
    
                  <div class="each_schedule">
                    <h3>17일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
    
                  <div class="each_schedule">
                    <h3>18일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
    
                  <div class="each_schedule">
                    <h3>19일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
    
                  <div class="each_schedule">
                    <h3>20일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
    
                  <div class="each_schedule">
                    <h3>21일</h3>
                    <h4>일정: 공부하기</h4>
                    <p>시간: 12:30</p>
                                    <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                  </div>
                  </div>

                  <div class="things">
                    <div class="each_schedule">
                      <h3>22일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
      
                    <div class="each_schedule">
                      <h3>23일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
      
                    <div class="each_schedule">
                      <h3>24일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
      
                    <div class="each_schedule">
                      <h3>25일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
      
                    <div class="each_schedule">
                      <h3>26일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
      
                    <div class="each_schedule">
                      <h3>27일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
      
                    <div class="each_schedule">
                      <h3>28일</h3>
                      <h4>일정: 공부하기</h4>
                      <p>시간: 12:30</p>
                                      <div class="buttonbox">
                  <button class="update_button">수정</button>
                  <button class="delete_button">삭제</button>
                </div>
                    </div>
                    </div>
            </div>

           

      

      </main>
    </div>
  </body>
</html>
