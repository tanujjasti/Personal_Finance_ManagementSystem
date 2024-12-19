<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{

background-color:rgb(255, 160, 122);

}
.main{
display:flex;
width:1200px;
height:auto;
margin-top:220px;
justify-content:space-between;
margin-left:150px;
border:solid;
background-color:#F5F5F5; 
}
.one{
width:auto;
height:90px;
background-color:#FFB6C1;

}
.two{
width:auto;
height:90px;
background-color:#FFFF00;
}
.three{
width:auto;
height:90px;
background-color:#ADD8E6;
}
</style>


</head>
<body>
<%
double ttamount = 0.0;  
double totaldue = 0.0;  
double currentbal = 0.0;

try{
	int uid=(Integer)session.getAttribute("uid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosis","root","tanuj20021008");
	PreparedStatement ps=con.prepareStatement("select sum(tamount) from transactions where uid=?");
	ps.setInt(1,uid);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next()){
		ttamount=rs.getDouble(1);
	}
	PreparedStatement sp=con.prepareStatement("select sum(dueamount) from bill where uid=?");
	sp.setInt(1,uid);
	ResultSet sr=sp.executeQuery();
	
	if(sr.next()){
		totaldue=sr.getDouble(1);
	}
	PreparedStatement pst=con.prepareStatement("select amount from card where uid=?");
	pst.setInt(1,uid);
	ResultSet rss=pst.executeQuery();
	
	if(rss.next()){
		currentbal=rss.getDouble(1);}
	
}
catch(Exception ex){
	out.print(ex);
	
}

%>
<div class="main">

<div class="one">
<center>
<h1>Current Balance:<%= currentbal %></h1>
</center>
</div>

<div class="two">
<center>
<h1>Sum of Transactions:<%=ttamount %></h1>
</center>
</div>
<div class="three">
<center>
<h1>Sum of Due Bills:<%=totaldue %></h1>
</center>

</div>




</div>



</body>
</html>