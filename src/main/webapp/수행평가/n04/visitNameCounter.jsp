<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>방문 횟수 카운터</title>
    <meta charset="UTF-8">
</head>
<body>
    <%
        Integer visitCount = (Integer) session.getAttribute("visitCount");
        String username = request.getParameter("username");

        if(visitCount == null) {
            visitCount = 1;
        } else {
            visitCount++;
        }
        session.setAttribute("visitCount", visitCount);
    %>
        <h1><%= username %>님이 사이트를 <%= visitCount %>번 방문하셨습니다.</h1>
</form>
</body>
</html>