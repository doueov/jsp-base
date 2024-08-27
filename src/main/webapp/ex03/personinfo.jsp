<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>사용자 정보</title>
    <meta charset="UTF-8">
</head>
<body>
    자바빈 객체 생성
    <jsp:useBean id = "person" class = "beans.Person" scope = "session" />
    <h4>
        Person이라는 클래스를 작성 (beans패키지안에) <br>
        - name과 age 필드를 가지고 있음 <br>
        - getter와 setter메서드 존재
        해당 페이지에서 Person 클래스를 사용하여(JavaBeans 사용) 사용자의 이름과 나이를 출력 <br>
        사용자 이름 : 자기이름, 자기나이 <br>
    </h4>
    <%  // JavaBeans의 속성을 설정
        person.setName("박도연");
        person.setAge(19);
    %>

    <h2> 사용자 정보 </h2>
    이름 : <%= person.getName() %> <br>
    나이 : <%= person.getAge() %> 세

</form>
</body>
</html>