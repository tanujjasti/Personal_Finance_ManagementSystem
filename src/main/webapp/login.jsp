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
    justify-content: center;
            align-items: center;        
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
}


.main{
display:flex;


            


}
.one{
background-color:brown;
width:350px;
height:400px;
border-right:1px solid brown;
color:white;

}
.two{
background-color:white;
width:350px;
height:400px;

}


</style>
</head>
<body>
<div class="main">
<div class="one">
<center>
<h1 style="font-size:40px;margin-top:80px">Hello!</h1>
<p style="margin-bottom:20px">Enter your personal details and start<br>your journey with us</p>
<a  href="signup.jsp"><input style="width:300px;height:32px;margin-top:25px;border-radius:20px;color:white;background-color:brown;border-color:white" type="button" value="signup"></a>
</center>
</div>
<div class="two">
<center>
<h1 style="font-size:40px;margin-top:80px">sign In</h1><br>
<table>
<form action="logincode.jsp" method="post">
<tr>
<td><input style="width:250px;height:30px;vertical-align:top;margin-top:-30px;" type="text" name="uid" placeholder="Enter id"></td><p></p>
</tr>
<tr>
<td><input style="width:250px;height:30px;vertical-align:top;margin-top:-0px;" type="text" name="uname" placeholder="Name"></td><p></p>
</tr>
<tr><td><input style="width:250px;height:30px;vertical-align:top;margin-top:30px;" type="password" name="pass" placeholder="password"></td><p></p>
</tr>
<tr><td><input style="width:250px;height:40px;vertical-align:top;margin-top:30px; border-radius:20px" type="submit" value="signin"></td></tr>
</table>

</form>
</center>
</div>

</div>


</body>
</html>