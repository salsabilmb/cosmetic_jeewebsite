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
<title>SM STORE | Products</title>

<style type="text/css">


ul li.products a{
font-size: 20px;
color: #696368;
}
.row{
margin-bottom: 30px;
}
.pro{
background: radial-gradient(#fff,#F7E9F5 ) ;

width:30%;
height: 250px;
padding: 0 20px;
margin: 20px;
box-shadow: 0 0 20px 0px rgba(0,0,0,0.3);
}

.pro:hover{
transition: all 0.6s ;
}
.pro ul li{
margin: 10px;
}

.pro ul li a{
text-align: left;
padding-bottom: 10px;
}

.row2{
justify-content: space-between;
margin: 100px;

}

.row2 ul {
display: flex;
list-style-type: none;
}

.row2 ul li{
display: inline-block;
width: 50%;
}
.row2 ul li select{
margin-left: 350px;
border: 1px solid #884EA0;
padding: 5px;
}
.pro h2{
text-align: center;
}
.pro .cart {
display: inline-block;

}

.pro .cart a:hover{
 color: green;
 font-size: 20px;

 }

</style>
</head>
<body>





<jsp:include  page="header.jsp"/>

<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
<div class="row2">
<ul>
	<li><h2>All Products</h2></li>
	<li><select>
	   <option>By Price</option>
	   <option>By Category</option>
	</select></li>
</ul>
</div>



<div class="container">
<div class="row">

<% 

String dbUrl = "jdbc:mysql://localhost:3306/miniprojetdb";
String dbUname = "root";
String dbPassword = "salsabilMB99";
String dbDriver = "com.mysql.cj.jdbc.Driver";



String query ="SELECT * FROM miniprojetdb.product";
/*String nameproduct=request.getParameter("nameproduct");
String price=request.getParameter("price");
String quantity=request.getParameter("quantity");
String category=request.getParameter("category");*/
ArrayList<Product> productList = new ArrayList<Product>();
String brand=null;
String nameproduct=null;
String price=null;
String quantity=null;
String category=null;
String provider=null;
String isselected=null;
String ref=null;
int x=1;
try{
Class.forName(dbDriver).newInstance();
Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
Statement pst = con.createStatement(); 
ResultSet rs = pst.executeQuery(query);


while(rs.next()){
	
	nameproduct = rs.getString("nameproduct");
	brand= rs.getString("brand");
	price=rs.getString("price");
	quantity=rs.getString("quantity");
	category=rs.getString("category");
	provider=rs.getString("provider");
	ref=rs.getString("reference");
	isselected=rs.getString("isselected");
	Product prod=new Product(nameproduct,price,quantity,category );
	productList.add(prod);
		

%>


<div class="pro">
<ul>
<li class=""><a><h2> <%=brand%> <%=nameproduct%> </h2></a></li>
<li class=""><a >Product price:   </a><%=price%> DA </li>
<li class=""><a >Product Category:   </a><%=category%> </li>
<li class=""><a >Product reference:   </a><%=ref%></li>

<%
if (clientbean.getProvider().equals("true")){
	%>
<li class=""><a >Product quantity:</a><%=quantity%> </li>
<li class=""><a >Added by:        </a><%=provider%> </li>

<% 
}
%>

</ul>

<div class="cart"><a href="addtocart" >ADD to Cart</a></div>
</div>

<% 
x++;
}
}
catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

	




%>

</div>
</div>
<jsp:include  page="footer.html"/>
</body>
</html>