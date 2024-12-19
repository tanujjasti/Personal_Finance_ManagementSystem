<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String billname=request.getParameter("bname");
	String itemdescription=request.getParameter("ides");
	String duedate=request.getParameter("dd");
	int dueamount=Integer.parseInt(request.getParameter("damt"));
	int uid=(Integer)session.getAttribute("uid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into bill values(?,?,?,?,?)");
	ps.setString(1,billname);
	ps.setInt(2,uid);
	ps.setString(3,itemdescription);
	ps.setString(4,duedate);
	ps.setDouble(5,dueamount);
	int i=ps.executeUpdate();
	if(i>0){
		out.print("bill added successfully");
	}
	
}
catch(Exception ex){
	out.print(ex);
}

%>

</body>
</html>