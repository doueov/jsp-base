<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>2학년 차노을</title>
    <meta charset="UTF-8">
</head>
<body>
    <jsp:useBean id = "student" class = "beans.Student" scope = "session" />

    <%
        student.setGrade("2학년");
        student.setName("차노을");
    %>
    <%= student.getGrade() %>
    <%= student.getName() %>


</form>
</body>
</html>