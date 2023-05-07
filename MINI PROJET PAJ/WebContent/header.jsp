<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
box-size: 0;
}

body {
font-family: 'Poppins', sans-serif;
}
.headbar{
display: flex;
align-items : center;
padding: 5px;
}

nav{
flex: 1;
text-align: right;
}

nav ul {
display: inline-block;
list-style-type: none;
}

nav ul li{
display: inline-block;
margin-right: 20px;
width: 60px;
}

nam{
text-decoration: none;
color: #884EA0;
text-align: left;
margin-left: 5px;
}

a {
text-decoration: none;
color: #884EA0;
}
 nav ul li a:hover{
 color: #8a8a8a;
 font-size: 20px;
 }

p{
color: #6F5977;
}
.cart{
display: flex;
height: 30px;
}

.container{
max-width: 1300px;
margin: auto;
padding-left: 25px;
padding-right: 25px;
}

.row{
display: flex;
align-items : center;
flex-wrap: wrap;
justify-content: space-around; 
}

.col1{
flex-basis: 50%;
min-width: 300px;
}
.col2 img{
width: 270px;
padding: 20px 0;

}

.col1 h1{
font-size: 40px;
line-height: 50px;
margin: 25px 0;


}
.header{
background: radial-gradient(#fff,#F2D7D5);

}
.header .row {
margin-top: 30px;
}
/*.categories{
margin:70px 0;
}
.col3{
flex-basis:30%;
min-width:250px;
margin-bottom: 30px;
}

.col3 img{
width:50%;
}

.small-contener{
max-width: 1000px;
max-height: 1080px;
margin: auto;
padding-left: 25px;
padding-right: 25px;

}
*/
</style>


</head>
<body>
<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>

<%
String name= clientbean.getFullname();
String prov=clientbean.getProvider();
%>

<div class="header">
<div class="container">
<div class="headbar">
<div class="logo">
<img  src="C:\Users\AIB\Desktop\Web Site Pictures\Women.png" width="100 px">
</div>

<nav>
<ul>
<li class="home"><a href="home.jsp">Home</a></li>
<li class="products"><a href="product.jsp">Products</a></li>
<%
if (name !=null){
	if(prov=="true")
	{
	%>
	<li class="provide"><a href="provider.jsp">Provide</a></li>
	<%
	}
	%>
	<li class="edit"><a href="editprofile.jsp">Profil</a></li>
	<li class="login"><a href="logout.jsp">Logout</a></li>
	<li class="cartimg"><div class="cart"><a href="" ><img  src="C:\Users\AIB\Desktop\Web Site Pictures\cart.png" 
	width="30px"></a>
	<nam><%=clientbean.getFullname()%></nam>
	</div>
	
	</li>
	<% 
}
else{
%>
<li class="login"><a href="login.jsp">Login</a></li>
<li class="insc"><a href="inscription.jsp">Inscription</a></li>
<%}
%>

</ul>
</nav>
</div>

<div class="row">
<div class="col1">

<h1> With a Good Makeup Brush, Everyone Can Be an Artist!</h1>
<p>    Belive that all women are pretty without makeup,
 and can be pretty<br> powerful with the right makeup. </p>
</div>

<div class="col2">
<img  src="C:\Users\AIB\Desktop\Web Site Pictures\Calque 1.png" >
</div>
</div>
</div>
</div>

</body>
</html>