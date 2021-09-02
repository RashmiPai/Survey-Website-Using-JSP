<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<form action="index.jsp" method="post">
<div class="menu">
<a href="index.jsp">Home</a>
</div><br><br>

<center><h1>Feedback of Survey</h1>


<%
String url = "jdbc:mysql://localhost:3306/website";
String username = "root";
String pwd = "password3";

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, username, pwd);
	
	String sql = "select * from feedback";
	
	int i=1;
	
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		out.print("<center><table>");
		out.print("<tr><td>"+"Question:"+rs.getInt("qid")+"</td></tr>");
		out.print("<tr><td>Option 1 : "+rs.getInt("countOfOpt1")+"</td></tr>");
		out.print("<tr><td>Option 2 : "+rs.getInt("countOfOpt2")+"</td></tr>");
		out.print("<tr><td>Option 3 : "+rs.getInt("countOfOpt3")+"</td></tr>");
		out.print("<tr><td>Option 4 : "+rs.getInt("countOfOpt4")+"</td></tr>");
		out.print("<br><br><br></center></table>"); 
		 
	}
	
	con.close();
	
}catch(Exception e){
	out.print(e);
}
%>

</form>

<center><input id="in" type= "submit" name="submit" value="LOGOUT"></input><br><br></center>

</body>
</html>