<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SM STORE | Home</title>

<jsp:useBean id="clientbean" class="miniProjet.Register"
	scope="application" />
<jsp:include page="header.jsp" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-size: 0;
}

nav {
	flex: 1;
	text-align: right;
	margin-right: 20px;
	width: 50px;
}

ul li.home a {
	font-size: 20px;
	color: #696368;
}

.categories {
	margin: 70px 10px;
}

.col {
	flex-basis: 30%;
    width:30;
	
	
	margin-bottom: 30px;
}
</style>
</head>
<body>

	<div class="categories">
		<div class="row">
			<div class="col">
				<img src="C:\Users\AIB\Desktop\Web Site Pictures\makeup.jpg">
			</div>

			<div class="col">
				<img src="C:\Users\AIB\Desktop\Web Site Pictures\Skincare.jpg" width="1300px">
			</div>

			<div class="col">
				<img src="C:\Users\AIB\Desktop\Web Site Pictures\perfum.jpg">
			</div>

		</div>
	</div>
	<h1>Welcome,</h1>
	<jsp:getProperty property="username" name="clientbean" />

	<h3>Your Email:</h3>
	<jsp:getProperty property="fullname" name="clientbean" />
	<h3>Your Password:</h3>
	<jsp:getProperty name="clientbean" property="username" />
	<jsp:getProperty name="clientbean" property="email" />
	<jsp:getProperty name="clientbean" property="password" />
	<jsp:getProperty name="clientbean" property="phone" />
	<br>



	<jsp:include page="footer.html" />
</body>
</html>