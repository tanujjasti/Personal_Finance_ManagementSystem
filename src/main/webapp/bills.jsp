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
vertical-align:middle;
}
.one{
border:solid;
width:360px;
margin-top:180px;
}
input{
width:280px;
height:30px;
margin-top:20px;
}

</style>
</head>
<body>
<div class="one">
<center>
<h1>Add New Bill</h1>
<table>
<form action="billcode.jsp" method="post">
<tr>
<td><input type="text" name="bname" placeholder="Bill Name"></td>
</tr>
<tr>
<td><input type="text" name="ides" placeholder="Item Description"></td>
</tr>
<tr>
<td><input type="date" name="dd" placeholder="Due date"></td>
</tr>
<tr>
<td><input type="text" name="damt" placeholder="Due Amount"></td>
</tr>
<tr>
<td><input style="background-color:green;" type="submit"  value="submit"></td>
</tr>
</form>
</table>
</center>
</div>

</body>
</html>