<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String log=null;
%>
<jsp:useBean id="clientbean" class="miniProjet.Register"  scope="application"/>
<jsp:setProperty name="clientbean" property="fullname" value="<%=log%>"/>
		<jsp:setProperty name="clientbean" property="username" value="<%=log%>"/>
		<jsp:setProperty name="clientbean" property="email" value="<%=log%>"/>
		<jsp:setProperty name="clientbean" property="password" value="<%=log%>"/>
		<jsp:setProperty name="clientbean" property="phone" value="<%=log%>"/>
		<%
		response.sendRedirect("home.jsp");
		%>

</body>
</html>