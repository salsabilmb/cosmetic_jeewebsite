<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SM STORE | Login</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
box-size: 0;
}

body {
font-family: 'Poppins', sans-serif;
}

.register{
padding: 50px;
font-family: 'Poppins', sans-serif;

}
.titre{
padding-top: 50px;
}
ul li.login a{
font-size: 20px;
color: #696368;
}
.form-re{
background: radial-gradient(#fff,#F7E9F5 ) ;
width: 300px;
height: 400px;
padding: 0 20px;
position: relative;
text-align: center;
margin: auto;
box-shadow: 0 0 20px 0px rgba(0,0,0,0.3);
}

.form-re form{
max-width: 300px;
padding: 0 20px;
position: absolute;
top: 110px;
}

form input{
width: 100%;
height: 30px;
border: none;
margin: 10px;
}
.form-re input[type="submit"] {
border: none;
border: 2px solid #8a8a8a;
border-radius: 24px;
max-width: 60%;
margin-top: 30px;
	
}
.form-re input[type="submit"]:HOVER {
max-width: 80%;
}
.form-re a{
color: #8a8a8a;
font-size: 15px;
margin: 15px;
}
.form-re input[type="checkbox"]{

max-width: 15px;
}
.form-re .check{

margin-left: 50px;
display: flex;
align-items : center;
padding-top: 5px;


}


</style>
</head>
<body>

<jsp:include  page="header.jsp"/>



<div class="register" >
<div class="container">
<div class="row">
<div class="form-re"> 
<div class="titre">
<h1>Login</h1>
</div>

<form action="exist.jsp" method="post">
<table>
<div class="check">
<input type="checkbox" name="provider" value="checked" >  I am a Provider </div>
 <tr> <td> User name:</td>
 <td> <input type="text" name="username" placeholder="User name" required> </td></tr>
 
 <tr> <td> Password:</td>
 <td> <input type="password" name="password" placeholder="Password" required> </td></tr>
</table>
<a href=" " >- Forget Password -</a>
<input type="submit" value="Login"> 
</form>

</div>
</div>
</div>
</div>
<jsp:include  page="footer.html"/>
</body>
</html>