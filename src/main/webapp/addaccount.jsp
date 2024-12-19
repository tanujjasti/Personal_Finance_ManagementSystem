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
justify-content:center;
align-items:center;
}
input{
width:240px;
height:25px;
}
</style>
</head>
<body>
<div style="border:solid;width:320px;margin-top:160px;">
<center>
<h1 >Add Account</h1>
<img style=" margin-top:-22px"src="debitcard.jpg" width=300px height=160px>

<table>
<form action="addaccountcode.jsp" method="post">
<tr><td><input type="text" name="cardnum" placeholder="Card Number"></td></tr>
<tr><td><input type="text" name="cardname" placeholder="Card Name"></td></tr>
<tr><td><input type="text" name="expdate" placeholder="Expiry Date(mm/yy)"></td></tr>
<tr><td><input type="text" name="cvvnum" placeholder="CVV Number"></td></tr>
<tr><td><input type="text" name="amount" placeholder="Amount"></td></tr>
<tr><td><input style="background-color:green; height:32px;width:250px" type="submit" value="submit"></td></tr>
</form>

</table>
</center>
</div>
</body>
</html>