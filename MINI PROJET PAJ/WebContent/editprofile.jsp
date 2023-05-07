<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
            <%@page import=" java.sql.DriverManager" %>   
<%@page import ="java.sql.PreparedStatement" %>
<%@page import ="java.sql.SQLException" %>

<%@page import ="java.sql.Statement" %>
<%@page import ="java.util.*" %>
<%@page import ="java.sql.*" %>
<%@page import ="java.io.*" %>
<%@page import ="java.sql.ResultSet" %>
<%@page import ="java.sql.Connection" %>
<%@page import ="miniProjet.Product" %>
<%@page import ="java.util.ArrayList" %>
<%@page import ="java.util.Collections" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SM STORE | Profile</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
box-size: 0;
}

body {
font-family: 'Poppins', sans-serif;
}

ul li.edit a {
	font-size: 20px;
	color: #696368;
}

.register{
padding: 50px;
font-family: 'Poppins', sans-serif;

}
.titre{
padding-top: 40px;
}
ul li.insc a{
font-size: 20px;
color: #696368;
}
.form-re{
background: radial-gradient(#fff,#F7E9F5 ) ;
width: 300px;
height: 450px;
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
margin-top: 5px;

}
.form-re input[type="submit"],input[type="button"] {
border: none;
border: 2px solid #8a8a8a;
border-radius: 15px;
max-width: 60%;
margin-top: 30px;
	
}
.form-re input[type="submit"]:HOVER,input[type="button"]:HOVER {

max-width: 80%;
}

.form-re input[type="checkbox"]{
max-width: 20px;
margin-right: 5px;
}
.form-re .check{

margin-left: 50px;
display: flex;
align-items : center;
margin-top: 5px;

}

</style>
</head>
<body>

<jsp:include  page="header.jsp"/>

<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
<div class="register" >
<div class="container">
<div class="row">
<div class="form-re"> 
<div class="titre">
<h1>Edit Profil</h1>
</div> 
<form action="insertprofile.jsp" method="post">
<table>
 
<tr> <td> Full Name</td>
 <td> <input type="text" name="fullname" value="<%=clientbean.getFullname()%>" > </td></tr>
 
  <tr> <td> Email:</td>
 <td> <input type="email" name="email" value="<%=clientbean.getEmail()%>"> </td></tr>
 
 <tr> <td> Phone Number:</td>
 <td> <input type="text" name="phone" pattern="0[5-7][0-9]{8}" value="<%=clientbean.getPhone()%>" > </td></tr>
 
 <tr> <td> New Password:</td>
 <td> <input type="password" name="newpassword" placeholder="Password" > </td></tr>
 
 <tr> <td> Old Password: </td>
 <td> <input type="password" name="oldpassword" placeholder="Password" required> </td></tr>
 
<tr> 
<td><a href="home.jsp"><input type="button"  value="Cancel"></a></td>
<td><input type="submit" value="Confirm"> </td> </tr>
</table>

</form>
</div>
</div>
</div>
</div>
<jsp:include  page="footer.html"/>
</body>
</html>