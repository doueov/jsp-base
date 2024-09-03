<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>로그인</h2>

<% //세션에 저장된 이름을 가지고 옴
        String username = (String) session.getAttribute("username");

        //세션에 저장된 이름이 null이거나 빈 문자열이면 로그인페이지로 이동
        if(username != null && !username.trim().isEmpty()){
            response.sendRedirect("welcome.jsp");
        }
    %>

<form action="loginProcess.jsp" method="POST">
    이름: <input type="text" name="username" />
    <input type="submit" value="로그인" />
</form>
</body>
</html>