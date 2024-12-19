<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-image: url(backgroundimg.jpg);
background-size:cover;
}

.one{
display:flex;
justify-content: space-between;
padding:5px
}
.sl{
padding:2px;
}
.block2{

}
.sf{
padding-top:10px;
font-weight:bold;
font-size:48px;
color:lightgreen;

}


</style>
</head>
<body>
<div class="main">
<div class="one">
    <div class="image">
        <img src="fintrack.png" width=80px height=25px alt="Logo">
    </div>
    <div class="sl">
        <a href="login.jsp" style="color:white;padding:3px">Login</a>&nbsp;&nbsp;&nbsp;
        <a href="signup.jsp" style="background-color:cement;color:white;padding:3px" >Signup for free</a>
        
    </div>
</div>
<div class="block2">
<center>
<p class="sf">Simplified Financial<br> Tracking<br> Application</p>
<p style="color:white">welcome! you are on the right path.Get started with fintrack and<br> take control of your expenses today!</p><br><br>
<p><a href="signup.jsp"><input type="button" value="signup for free" style="padding:10px;background-color:skyblue"></a></p></center><br>
</div>
<div>
<center>
<p style="display:inline-block;color:white">get rewarded<br>upto 10%<br>cashback</p>
<p style="display:inline-block;color:white;margin-left:75px">security&<br>privacy<br>guaranteed</p>
<p style="display:inline-block;color:white;margin-left:75px">100%<br>refundable<br>deposits</p>
</center>

</div>
</div>

</body>
</html>