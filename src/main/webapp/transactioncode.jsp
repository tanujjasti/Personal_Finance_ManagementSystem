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
int transactionid=Integer.parseInt(request.getParameter("trid"));
int uid=(Integer)session.getAttribute("uid");
String goal=request.getParameter("goal");
String paymenttype=request.getParameter("ptype");
String dateofpayment=request.getParameter("dop");
int tamount=Integer.parseInt(request.getParameter("tamt"));
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
PreparedStatement sp=con.prepareStatement("select*from card where uid=?");
sp.setInt(1,uid);
ResultSet sr=sp.executeQuery();
if(sr.next()){
	int amount=sr.getInt(6);
	int newamount=amount-tamount;
	//int id=(Integer)session.getAttribute("uid");
	if(newamount>=0){
	PreparedStatement pst=con.prepareStatement("update card set amount=? where uid=?");
	pst.setInt(1,newamount);
	pst.setInt(2,uid);
	int j=pst.executeUpdate();
	if(j>0){
		out.print("  balance updated");
	}

PreparedStatement ps=con.prepareStatement("Insert into transactions values(?,?,?,?,?,?)");
ps.setInt(1,transactionid);
ps.setInt(2,uid);
ps.setString(3,goal);
ps.setString(4,paymenttype);
ps.setString(5,dateofpayment);
ps.setInt(6,tamount);
int i=ps.executeUpdate();
if(i>0){
	out.print("Transaction Inserted Successfully");
}
	}
	else{
		out.print("insufficient balance");
	}
}
	
}
catch(Exception ex){
	out.print(ex);
}





%>

</body>
</html>