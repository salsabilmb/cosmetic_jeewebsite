<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import=" java.sql.DriverManager" %>   
<%@page import ="java.sql.PreparedStatement" %>
<%@page import ="java.sql.SQLException" %>

<%@page import ="java.sql.Statement" %>
<%@page import ="java.util.*" %>
<%@page import ="java.sql.*" %>
<%@page import ="java.io.*" %>
<%@page import ="java.sql.ResultSet" %>
<%@page import ="java.sql.Connection" %>
<%@page import ="miniProjet.Register" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
<%  
String dbUrl = "jdbc:mysql://localhost:3306/miniprojetdb";
String dbUname = "root";
String dbPassword = "salsabilMB99";
String dbDriver = "com.mysql.cj.jdbc.Driver";


String sql ="insert into product (nameproduct,price,quantity,brand,category,provider,reference) value(?,?,?,?,?,?,?)";

try{
	
Class.forName(dbDriver).newInstance();
Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);


String brand = request.getParameter("brand");
String nameproduct = request.getParameter("nameproduct");
String price = request.getParameter("price");
String quantity = request.getParameter("quantity");
String category = request.getParameter("category");
String ref = request.getParameter("ref");


PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,nameproduct.toUpperCase());
ps.setString(2,price.toUpperCase());
ps.setString(3,quantity.toUpperCase());
ps.setString(4,brand.toUpperCase());
ps.setString(5,category.toUpperCase());
ps.setString(6, clientbean.getFullname());
ps.setString(7, ref);


ps.executeUpdate();

response.sendRedirect("product.jsp");
	
}
catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

%>
</body>
</html>