<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-color:lightblue;
}
div{
margin-top:100px;
}
</style>
</head>
<body>
<%
try{
	int uid=(Integer)session.getAttribute("uid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("select* from bill where uid=?");
	ps.setInt(1,uid);
	ResultSet rs=ps.executeQuery();%>
	<div>
	<h1>All Bills</h1>
	<table border=1>
	<tr>
	<th>Bill Name</th>
	<th>Uid</th>
	<th>Item Description</th>
	<th>Due Date</th>
	<th>Due Amount</th>
	</tr>
	<% while(rs.next()){%>
	<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getInt(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getDouble(5)%></td>
	
	</tr>
	<%} %>
	</table>
	</div>
	
<%	
}
catch(Exception ex){
	
}



%>

</body>
</html>