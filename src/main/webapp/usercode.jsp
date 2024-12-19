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
	String name=request.getParameter("uname");
	String password=request.getParameter("pass");
	String email=request.getParameter("mail");
	String gender=request.getParameter("gender");
	String address=request.getParameter("add");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("insert into fuser (name,password,email,gender,address) values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,password);	
	ps.setString(3,email);	
	ps.setString(4,gender);
	ps.setString(5,address);	
	int i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("success.jsp");
	}
	else{
		out.print("user registration failed");
	}
}


catch(Exception ex){
	
}
%>

</body>
</html>