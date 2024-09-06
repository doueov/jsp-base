<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
    <title>카트</title>
    <meta charset="UTF-8">
</head>
<body>
    <h2>카트내용</h2>

    <%
        ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
        if(cart = null &&cart.isEmpty()) {
    %>

        <ul>
            <% for (String item : cart){ %>
                <li><%=item%></li>
            <%} %>
        </ul>

    <%
        } else {
            <h2>카트가 없습니다.</h2>
        }
    %>

    <a href="shop.jsp">쇼핑 계속하기</a>
    <a href="DeleteAllCart.jsp">쇼핑 카트 비우기</a>

</body>
</html>