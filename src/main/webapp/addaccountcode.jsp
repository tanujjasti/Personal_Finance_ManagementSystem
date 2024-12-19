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
String cardnumber=request.getParameter("cardnum");
String cardname=request.getParameter("cardname");
String expirydate=request.getParameter("expdate");
String cvvnum=request.getParameter("cvvnum");
double amount=Double.parseDouble(request.getParameter("amount"));
int uid=(Integer)session.getAttribute("uid");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
PreparedStatement ps=con.prepareStatement("insert into card values(?,?,?,?,?,?)");
ps.setString(1,cardnumber);
ps.setInt(2,uid);
ps.setString(3,cardname);
ps.setString(4,expirydate);
ps.setString(5,cvvnum);
ps.setDouble(6,amount);
int i=ps.executeUpdate();
if(i>0){
	response.sendRedirect("balances.jsp");
}
	
	
}
catch(Exception ex){
	out.print(ex);
}


%>



</body>
</html>