<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>인사 메시지</title>
    <meta charset="UTF-8">
</head>
<body>
    <% //폼 데이터에서 이름을 가지고 오는 문장
        Integer number = request.getParameter(number);

        if(number%2==1) {
            입력한 숫자 <%= number %>는 홀수입니다.
        }
    %>
</form>
</body>
</html>