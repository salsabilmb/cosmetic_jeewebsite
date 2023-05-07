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
<%@page import ="miniProjet.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%  
String dbUrl = "jdbc:mysql://localhost:3306/miniprojetdb";
String dbUname = "root";
String dbPassword = "salsabilMB99";
String dbDriver = "com.mysql.cj.jdbc.Driver";
String dbpath="home.jsp";




String sql ="insert into client (fullname,username,gmail,password,phone) value(?,?,?,?,?)";


try{
Class.forName(dbDriver).newInstance();
Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);

String fullname = request.getParameter("fullname");
String username = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phone = request.getParameter("phone");
String check=request.getParameter("provider");

if(check != null){
	sql ="insert into fournisseur (fullname,username,gmail,password,phone) value(?,?,?,?,?) ";
	dbpath="provider.jsp";
}
PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1,  fullname);
ps.setString(2,username);
ps.setString(3, email);
ps.setString(4, password);
ps.setString(5, phone);
ps.executeUpdate();

		%>
		<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
		<jsp:setProperty name="clientbean" property="fullname" value="<%=fullname%>" />
		<jsp:setProperty name="clientbean" property="username" value="<%=username%>" />
		<jsp:setProperty name="clientbean" property="email" value="<%=email%>"/>
		<jsp:setProperty name="clientbean" property="password" value="<%=password%>"/>
		<jsp:setProperty name="clientbean" property="phone" value="<%=phone%>"/>
		
	   <!--   <jsp:include  page="home.jsp"/> -->
		<% 	
		response.sendRedirect(dbpath);
	
	
		%>
		
		<% 

}
catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

%>

</body>
</html>