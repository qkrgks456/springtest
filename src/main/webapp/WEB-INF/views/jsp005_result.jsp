<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container panel panel-info">
    <h3 class="panel-heading">WEBSTANDARD+TABLE</h3>
    <table class="table table-striped">
        <caption>MILKS</caption>
        <thead>
        <tr>
            <th>mno</th>
            <th>mname</th>
            <th>mprice</th>
        </tr>
        </thead>
        <tbody>
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rset = null;
            String sql = "SELECT mno,mname,mprice FROM milk";
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbasic?useSSL=false", "root", "1234");
                stmt = conn.createStatement();
                rset = stmt.executeQuery(sql);

                if (conn != null) {
                    out.print("연동 성공!");
                }
                while (rset.next()) {
                    out.println("<tr><td>" + rset.getInt("mno") +
                            "</td><td>" + rset.getString("mname") +
                            "</td><td>" + rset.getInt("mprice") +
                            "</td><tr>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rset != null) {
                    try {
                        rset.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } // 표
                if (stmt != null) {
                    try {
                        stmt.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } // 구문
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } // db
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
