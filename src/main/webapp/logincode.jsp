<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
int id=Integer.parseInt(request.getParameter("uid"));
String name=request.getParameter("uname");
String password=request.getParameter("pass");
session.setAttribute("uid",id);
session.setAttribute("name",name);
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
PreparedStatement ps=con.prepareStatement("select * from fuser where uid=? and name=? and password=?");
ps.setInt(1,id);
ps.setString(2,name);
ps.setString(3,password);
ResultSet rs=ps.executeQuery();
if(rs.next()){
	response.sendRedirect("board.jsp");
}

}
catch(Exception ex){
	out.print(ex);
	
}

%>

</body>
</html>