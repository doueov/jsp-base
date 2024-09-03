<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

    <% //폼 데이터에서 이름을 가지고 오는 문장
        String username = request.getParameter("username");

        //로그인 성공했다고 가정
        session.setAttribute("username", username);

        response.sendRedirect("welcome.jsp");

    %>