<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>인사 메시지</title>
    <meta charset="UTF-8">
</head>
<body>
    <% //폼 데이터에서 이름을 가지고 오는 문장
        String username = request.getParameter("username");

        // 입력된 이름이 null이거나 빈 문자열이면 인사 안하고 입력되지 않았다고 나오도록
        if(username != null && !username.trim().isEmpty()) {
    %>
        <h1>안녕하세요, <%= username %>님!</h1>
    <% }else { %>
        <h1>이름을 입력하지 않았습니다.</h1>
    <%
        }
    %>
</form>
</body>
</html>