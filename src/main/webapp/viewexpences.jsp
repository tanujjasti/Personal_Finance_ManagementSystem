<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%
try{
	double curbal=0.0;
	double initialbal=0.0;
	double ttamount=0.0;
	double dueamount=0.0;
	int uid=(Integer)session.getAttribute("uid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("select* from card where uid=?");
	ps.setInt(1,uid);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		curbal=rs.getDouble(6);
	}
	PreparedStatement sp=con.prepareStatement("select sum(tamount) from transactions where uid=?");
	sp.setInt(1,uid);
	ResultSet sr=sp.executeQuery();
	if(sr.next()){
		ttamount=sr.getDouble(1);
	}
	PreparedStatement pstmt=con.prepareStatement("select sum(dueamount)from bill where uid=?");
	pstmt.setInt(1,uid);
	ResultSet rss=pstmt.executeQuery();
	if(rss.next()){
		dueamount=rss.getDouble(1);
	}
	initialbal=curbal+ttamount;
	out.print("Current Balance:"+curbal+"<br>");
	out.print("Previous Balance:"+initialbal+"<br>");
	out.print("Total Transaction Amount:"+ttamount+"<br>");
	out.print("Total Due Amount:"+dueamount+"<br>");
	if(curbal>dueamount){
		out.print("your are financially stable");
	}
	else{
		if((dueamount-curbal)<=5000){
			out.print("you are finncially slightly unstable");
		}
		else{
			out.print("you are severely unstable");
		}
		
	}
}
catch(Exception ex){
	out.print(ex);
	
}



%>

</body>
</html>