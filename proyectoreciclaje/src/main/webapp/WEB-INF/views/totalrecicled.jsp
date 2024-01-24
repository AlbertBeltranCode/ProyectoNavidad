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
	<h1>THANK YOU ALL FOR RECICLING</h1>

	<a href="recicle" style="color:blue; font: bold 11px Arial; text-decoration: none; background-color: #EEEEEE;
	  color: #333333; padding: 2px 6px 2px 6px; border-top: 1px solid #CCCCCC; border-right: 1px solid #333333;
	  border-bottom: 1px solid #333333; border-left: 1px solid #CCCCCC;">INSERT NEW REGISTER</a>
	  
	<p></p>
	
	<a href="insertpost" style="color:blue; font: bold 11px Arial; text-decoration: none; background-color: #EEEEEE;
	  color: #333333; padding: 2px 6px 2px 6px; border-top: 1px solid #CCCCCC; border-right: 1px solid #333333;
	  border-bottom: 1px solid #333333; border-left: 1px solid #CCCCCC;">INSERT NEW POST</a>
	  
	<p></p>
	
	<a href="main" style="color:blue; font: bold 11px Arial; text-decoration: none; background-color: #EEEEEE;
	  color: #333333; padding: 2px 6px 2px 6px; border-top: 1px solid #CCCCCC; border-right: 1px solid #333333;
	  border-bottom: 1px solid #333333; border-left: 1px solid #CCCCCC;">LOG OFF</a>
	  
	<p></p>
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
		<td><b>Total Recicled</b></td>
	</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT SUM(recicle) AS totalRecicled FROM recicled;";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
	<tr bgcolor="#FFFCF9">
		<td>Amount of recicled bags by all users: <%=resultSet.getString("totalRecicled") %></td>
	</tr>

<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql2 ="SELECT SUM(recicle)*1.5 AS totalRecicled FROM recicled;";
resultSet = statement.executeQuery(sql2);
while(resultSet.next()){
%>
	<tr bgcolor="#FFFCF9">
		<td>1 Recicled bag = 1.5 million ton of C02 saved</td>
	</tr>
	<tr bgcolor="#FFFCF9">
		<td>Amount of CO2 Saved: <%=resultSet.getString("totalRecicled") %> million tons</td>
	</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<h1>Recicling news and relevant information</h1>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql3 ="SELECT * FROM posts";
resultSet = statement.executeQuery(sql3);

while(resultSet.next()){
%>


<div id="content">
    <div>
        <div style="text-align: center; background-color: white; width: 800px; height:30px; margin-bottom: 10px; padding: 0px;">
            <h2><%=resultSet.getString("title") %></h2>
        </div>
        <div style="text-align: center; background-color: white; width: 800px; margin: 0 auto; padding: 20px;">
            <p><%=resultSet.getString("context") %></p>
        </div>
        <div>
            
        </div>
    </div>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</body>
</html>