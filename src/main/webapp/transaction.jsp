<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
display:flex;
align-items:center;
justify-content:center;
}
input{
height:30px;
width:250px;
margin-bottom:16px;

}
div{
border:solid;
width:320px;
margin-top:160px;
}


</style>
</head>
<body>
<div class="one">
<center>
<h1>Transaction</h1>
<table style="margin-top:-20px;">
<form action="transactioncode.jsp" method="post">
<tr><td><input type="text" name="trid" placeholder="Transaction Id"></td></tr><br>
<tr><td><input type="text" name="goal" placeholder="Goal"></td></tr>
<tr><td><input type="text" name="ptype" placeholder="Payment Type"></td></tr>
<tr><td><input type="date" name="dop" placeholder="Date Of Payment"></td></tr>
<tr><td><input type="text" name="tamt" placeholder="Amount"></td></tr>
<tr><td><input style="background-color:green;" type="submit" value="Submit"></td></tr>
</form>

</table>

</center>
</div>

</body>
</html>