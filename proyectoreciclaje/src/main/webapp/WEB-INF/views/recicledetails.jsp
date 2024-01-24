<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#4FFFB0;">
 <div align="center">
<h2>Information Submitted successfully to the database</h2>
<a href="totalrecicled" style="color:blue; font: bold 11px Arial; text-decoration: none; background-color: #EEEEEE;
  color: #333333; padding: 2px 6px 2px 6px; border-top: 1px solid #CCCCCC; border-right: 1px solid #333333;
  border-bottom: 1px solid #333333; border-left: 1px solid #CCCCCC;">Check How much c02 have we saved together</a>
<h1>Actual information at the database</h1>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "reciclaje";
String userId = "admin";
String password = "admin";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="#FFD166">
<td><b>Id</b></td>
<td><b>Recicled</b></td>
<td><b>Date</b></td>
<td><b>Location</b></td>
</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM recicled";


resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr bgcolor="#FFFCF9">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("recicle") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("location") %></td>
</tr>
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>