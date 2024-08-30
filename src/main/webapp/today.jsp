<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>수고했어 오늘도</title>
    <meta charset="UTF-8">
</head>
<body>
    <jsp:useBean id = "hiservlet" class = "beans.HiServlet" scope = "session" />

    <%
        hiservlet.setContent("수고했어, 오늘도");
    %>

    <%= hiservlet.getContent() %>

</form>
</body>
</html>