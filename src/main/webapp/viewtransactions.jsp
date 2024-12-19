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
background-color:yellow;
}
table{
}
</style>
</head>
<body>
<%
try{
	int uid=(Integer)session.getAttribute("uid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("select* from transactions where uid=?");
	ps.setInt(1,uid);
	ResultSet rs=ps.executeQuery();%>
	<h1>All Transactions</h1>
	<table border=1>
	<tr>
	<th>Transaction Id</th>
	<th>Uid</th>
	<th>Goal</th>
	<th>Payment Type</th>
	<th>Date of Payment</th>
	<th>tamount</th>
	</tr>
	<% while(rs.next()){%>
	<tr>
	<td><%=rs.getInt(1)%></td>
	<td><%=rs.getInt(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getDouble(6)%></td>
	
	</tr>
	<%} %>
	</table>
	
<%	
}
catch(Exception ex){
	
}



%>

</body>
</html>