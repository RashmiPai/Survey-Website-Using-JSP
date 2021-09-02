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
<title>Successful_Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<form action="feedback.jsp" method="post">
<div class="menu">
<a href="index.jsp">Home</a>
</div><br><br>
<center><h2>Successful Login</h1></center>

<%

String url = "jdbc:mysql://localhost:3306/website";
String username = "root";
String pwd = "password3";

int c1=0, c2=0, c3=0, c4=0;

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url, username, pwd);
	
	String sql = "select * from question";
	int i=1;
	
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
	    int pk = rs.getInt(1);
	    String ques = rs.getString(2);
	    String opt1 = rs.getString(3);
	    String opt2 = rs.getString(4);
	    String opt3 = rs.getString(5);
	    String opt4 = rs.getString(6);
	    
	%>
	<%=i%>. <%=ques%><br/>
	<input type="radio" name="<%=pk%>" value=opt1 style=\"background: thistle;\"/><%=opt1%><br/>
	<input type="radio" name="<%=pk%>" value=opt2 style=\"background: thistle;\"/><%=opt2%><br/>
	<input type="radio" name="<%=pk%>" value=opt3 style=\"background: thistle;\"/><%=opt3%><br/>
	<input type="radio" name="<%=pk%>" value=opt4 style=\"background: thistle;\"/><%=opt4%><br/>
	<br/><br/>
	<%
	    i++;
	}

	
	con.close();
	
} catch(Exception e){
	out.print(e);
}
%>

<center><input id="in" type= "submit" name="submit" value="SUBMIT"></input><br><br></center>
<center><input id="in" type= "submit" name="logout" value="LOGOUT"></input><br><br></center>
</body>
</html>


<!--  out.print("<center><table>");
		out.print("<tr><td>"+"Question:"+rs.getString("question")+"</td></tr>");
		out.print("<tr><td><input type='radio' value='countOfOpt1' name='option' style=\"background: lightpink;\">"+rs.getString("opt1")+"</td></tr>");
		out.print("<tr><td><input type='radio' value='countOfOpt2' name='option' style=\"background: lightpink;\">"+rs.getString("opt2")+"</td></tr>");
		out.print("<tr><td><input type='radio' value='countOfOpt3' name='option' style=\"background: lightpink;\">"+rs.getString("opt3")+"</td></tr>");
		out.print("<tr><td><input type='radio' value='countOfOpt4' name='option' style=\"background: lightpink;\">"+rs.getString("opt4")+"</td></tr>");
		out.print("<br><br><br></center></table>"); -->