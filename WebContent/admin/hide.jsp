<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="cl_data1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String c_name ="";
if(request.getParameter("c_name")!= null)
{
try
{
	Connect1 obj = new Connect1();
	Connection con= obj.get_con();
	
	c_name = request.getParameter("c_name");
	
	edit ed = new edit();
	
	ed.n_name1= c_name;
	ed.n_flag="deactivate";
	
	int c= ed.hide_data();
	
	if(c==1)
	{
		out.println("<h1>Comment Hidden Succesfully</h1>");
	}
	else
	{
		out.println("<h1>Try Again</h1>");
	}
	
}
catch(Exception ex)
{
		out.println(ex);
}
}
%>

<form method="post" action="control.jsp">
<input type="submit" value="Back to Control">
</form>

</body>
</html>