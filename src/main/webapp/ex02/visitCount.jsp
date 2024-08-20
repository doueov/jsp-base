<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>방문 횟수 카운터</title>
    <meta charset="UTF-8">
</head>
<body>
    JSP 내장객체 session 활용하기 <br>
    사용자가 사이트를 방문한 횟수 나타내기
    <%
        // 방문 횟수를 가져옴
        Integer visitCount = (Integer) session.getAttribute("visitCount");

        // 초기값은 null일 수 있으니 체크
        if(visitCount == null) {
            visitCount = 1;
        } else {    // 이미 있으면 1증가
            visitCount++;
        }
        // 새로운 방문 횟수를 세션에 저장
        session.setAttribute("visitCount", visitCount);
    %>
        <h1>이 사이트를 <%= visitCount %>번 방문하셨습니다.</h1>
</form>
</body>
</html>