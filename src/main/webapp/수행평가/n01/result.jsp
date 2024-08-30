<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>계산기</title>
    <meta charset="UTF-8">
</head>
<body>
    <%
        Integer num1 = request.getParameter(num1);
        Integer num2 = request.getParameter(num2);
        Integer result = num1 + num2

        <%= result %>
    %>
</form>
</body>
</html>