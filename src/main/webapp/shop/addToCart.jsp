<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% page import="java.util.ArrayList"%>

<%
    String item = request.getParameter("item");
    ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");
    if(cart == null) {
        cart = new ArrayList<String>();
    }

    // cart 아이템 추가
    cart.add("item");
    session.getAttribute("cart", cart);

    response.sendRedirect("welcome.jsp");
%>