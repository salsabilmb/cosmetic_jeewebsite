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


<title>exist</title>
</head>
<body>

<%  
 String dbUrl = "jdbc:mysql://localhost:3306/miniprojetdb";
 String dbUname = "root";
String dbPassword = "salsabil";
 String dbDriver = "com.mysql.cj.jdbc.Driver";
 String dbpath="home.jsp";


String usen, pass;
String query ="SELECT * FROM miniprojetdb.client";
usen=request.getParameter("username");
pass=request.getParameter("password");
String check=request.getParameter("provider");
String provider="false";

if(check != null){
	query ="SELECT * FROM miniprojetdb.fournisseur";
	dbpath="provider.jsp";
	provider="true";
}

try{
Class.forName(dbDriver).newInstance();
Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
Statement pst = con.createStatement(); 
ResultSet rs = pst.executeQuery(query);

while(rs.next()){
	String fullname = rs.getString("fullname");
	String username= rs.getString("username");
	String email = rs.getString("gmail");
	String password = rs.getString("password");
	String phone = rs.getString("phone");
	if(usen.equals(username) && pass.equals(password)){
	  
		%>
		<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
		<jsp:setProperty name="clientbean" property="fullname" value="<%=fullname%>"/>
		<jsp:setProperty name="clientbean" property="username" value="<%=username%>"/>
		<jsp:setProperty name="clientbean" property="email" value="<%=email%>"/>
		<jsp:setProperty name="clientbean" property="password" value="<%=password%>"/>
		<jsp:setProperty name="clientbean" property="phone" value="<%=phone%>"/>
		<jsp:setProperty name="clientbean" property="provider" value="<%=provider%>"/>
		
	   <!--   <jsp:include  page="home.jsp"/> -->
		<% 	
		response.sendRedirect(dbpath);
	}
	else {
		
		
		}
	}


rs.close();
pst.close();

}
catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}

%>

</body>
</html>