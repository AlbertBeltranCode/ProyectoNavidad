<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#4FFFB0;">
 <div align="center">
  <h1>Insert new post</h1>
  <form action="<%= request.getContextPath() %>/insertpost" method="post">
   <table style="with: 80%">
    <tr>
     <td>Title</td>
     <td><input type="text" name="title" /></td>
    </tr>
    <tr>
     <td>Context</td>
     <td><input type="text" name="context" /></td>
    </tr>
    <tr>
     <td>Date</td>
     <td><input type="date" name="date" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>