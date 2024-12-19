<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*,java.time.*,java.time.LocalDate,java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.one{
display:inline-block;

background-color:lightwhite:

}
.two{
display:inline-block;
padding-top:20px;
padding-left:20px;

vertical-align:top;
background-color:#FFF8F0;
width:1100px;
box-shadow: 3px 3px 3px rgba(128, 128, 128, 0.5);

}
.para{
display:inline-block;
}
.search{
display:inline-block;
margin-left:800px;
vertical-align:top;
padding-top:4px;
margin-top:20px;
}



a{
color:black;
padding-left:20px;
font-size:20px;
}
a:hover{
padding:8px 20px 8px 12px;
border:thin;
border-radius:8px;
background-color:blue;

}
</style>
</head>
<body>

<%  Integer userId = (Integer) session.getAttribute("uid");
String name= (String) session.getAttribute("name");
LocalDate ldate=LocalDate.now();
DateTimeFormatter formatter=DateTimeFormatter.ofPattern("MMMM dd,yyyy");
String forma=ldate.format(formatter);

%>

<div class="one">
<img style="display:inline-block;padding-top:15px;" src="clarity.jpg" width=25px;height=10px;>&nbsp;<p style="margin-left:0px;display:inline-block;font-size:30px">Clarity UI</p>
<br><br>
<a href="welcome.jsp">Dashboard</a><br><br>
<a href="balances.jsp">Balances</a><br><br>
<a href="transaction.jsp">Transactions</a><br><br>
<a href="bills.jsp">Bills</a><br><br>
<a href="expences.jsp">Expences</a><br><br>
<a href="goal.jsp">Goals</a><br><br><br><br><br><br><br><br>
<select style="width:180px;height:40px;background-color:skyblue" name="jj">
<option  value="Jacon Jones">JacobJones</option>
<option  value="Colombus">colombus</option>
<option  value="vascodagama">Vascodagama</option>
</select>

</div>

<div class="two">
<p class="para">
<label style="font-weight:bold;font-size:25px">Hiii <%=name %></label><br>
<label><%= forma %></label>
</p>
<input class="search" type="search" name="sbox" placeholder="search here or ask me">

</div>


</body>
</html>