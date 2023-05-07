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

<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
<%
String dbUrl = "jdbc:mysql://localhost:3306/miniprojetdb";
String dbUname = "root";
String dbPassword = "salsabilMB99";
String dbDriver = "com.mysql.cj.jdbc.Driver";





String fullname = request.getParameter("fullname");
String email = request.getParameter("email");
String newpssword = request.getParameter("newpassword");
String oldpassword = request.getParameter("oldpassword");
String phone = request.getParameter("phone");





if( oldpassword.equals(clientbean.getPassword()) ){
	clientbean.setFullname(fullname);
	clientbean.setEmail(email);
	clientbean.setPhone(phone);
	if(newpssword != ""){
		 clientbean.setPassword(newpssword);
	}
	out.print("in try jdjdjj");
	try{
		Class.forName(dbDriver).newInstance();
		Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		
        Statement ps = con.createStatement();
				
    	/*ps.setString(1,clientbean.getFullname());
    	ps.setString(2,clientbean.getEmail());
    	ps.setString(3,clientbean.getPassword());
    	ps.setString(4,clientbean.getPhone());*/
				
    	String  sql="Update client set  fullname='"+clientbean.getFullname()+"',gmail='"+clientbean.getEmail()
    	+"',password='"+clientbean.getPassword()+"',phone='"+clientbean.getPhone()+"' where username='"+clientbean.getUsername()+"'";

    	if(clientbean.getProvider().equals("true"))
    		sql="Update fournisseur set fullname='"+clientbean.getFullname()+"',gmail='"+clientbean.getEmail()
        	+"',password='"+clientbean.getPassword()+"',phone='"+clientbean.getPhone()+"' where username='"+clientbean.getUsername()+"'";
		
				
				
    	ps.executeUpdate(sql);
    	response.sendRedirect("home.jsp");

	}
	catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
}


%>



</body>
</html>