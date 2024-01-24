<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body style="background-color:#4FFFB0;">
 <div align="center">
  <h1>Introduce Values to start recicling</h1>
  <form action="<%= request.getContextPath() %>/recicle" method="post">
   <table style="with: 80%">
    <tr>
     <td>Quantity Recicled</td>
     <td><input type="number" name="recicle" /></td>
    </tr>
    <tr>
     <td>Date</td>
     <td><input type="date" name="date" /></td>
    </tr>
    <tr>
     <td>Location</td>
     <td><input type="text" name="location" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</body>
</html>