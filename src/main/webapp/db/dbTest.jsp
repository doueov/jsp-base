<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>DB 연결하기</title>
    <meta charset="UTF-8">
</head>
<body>
<table>
    <%
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try{
            String jdbcUrl = "jdbc:mysql://localhost:3306/spring_boot_jpa";
            String dbId = "root";
            String dbPass = "1234";

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

            String query = "select * from member";

            stmt = conn.createStatement();

            rs = stmt.executeQuery(query);

            while(rs.next()){
            %>
                <tr>
                    <td><%= rs.getString("id") %></td>
                    <td><%= rs.getString("title") %></td>
                    <td><%= rs.getString("writer") %></td>
                    <td><%= rs.getString("content") %></td>
                </tr>
            <%
            }

        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null){
                try{
                    rs.close();
                }catch(Exception ex){}
            }
            if(stmt!=null){
                try{
                    stmt.close();
                }catch(Exception ex){}
            }
            if(conn!=null){
                try{
                    conn.close();
                }catch(Exception ex){}
            }
        }

    %>
</table>
</form>
</body>
</html>