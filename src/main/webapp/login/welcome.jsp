<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>인사 메시지</title>
    <meta charset="UTF-8">
</head>
<body>
    <% //세션에 저장된 이름을 가지고 옴
        String username = (String) session.getAttribute("username");

        //세션에 저장된 이름이 null이거나 빈 문자열이면 로그인페이지로 이동
        if(username != null && !username.trim().isEmpty()){
    %>
    <h1> 안녕하세요, <%= username %>님!</h1>
    <a href="login.jsp">로그아웃하기</a>
    <%
        }else{
            response.sendRedirect("login.jsp");
        }
    %>


</body>
</html>