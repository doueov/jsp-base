<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>쇼핑</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>쇼핑</h2>
<form action="loginProcess.jsp" method="POST">
    <select name = "item">
        <option value="Laptop">노트북</option>
        <option value="Smartphone">스마트폰</option>
        <option value="Tablet">태블릿</option>
    </select>
    <input type="submit" value="카트 추가"/>
</form>
<a href="cart.jsp">쇼핑카트로 이동</a>
</body>
</html>