<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="cl_data1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>MJ LIBRARY MANAGMENT</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
<!-- start header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- end header -->
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
		
		<center><h1 class="title">Welcome, To  Book  Return  Section</h1></center>
		
			
			
			<div class="entry">
				<blockquote>
					<p>&#8220;Select the Student then book you wanted to return.Enjoy Services.&#8221;</p>
				</blockquote>
				<fieldset>
<center>
<form method="post">
<table style="margin-bottom:20px">
<tr>
<th>Select Student Name</th>
<%

try
{
Connect1 obj1 = new Connect1();
Connection con = obj1.get_con();
select sd1 = new select();
ResultSet rs =sd1.select_name();

%>
<td>
<select name="s1">
<%

while(rs.next())
{
	
	out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");

}
%>
</select>
<%

	out.println("</td>");
}
catch(Exception ex)
{
	System.out.println(ex);
}
%>

</tr>

<tr>
<th>Clik to Go</th>
<td><input type="submit" name="sub1" value="GO GoA GoNE"></td>
</tr>
</table>


<table border="1" width="200px" style="margin-bottom:10px">

<%
if(request.getParameter("sub1")!=null)
{
	%>
	<tr>
	<th>Book</th>
	<th>Issue Date</th>
	<th>Return</th>
	</tr>
	<%
try
{
Connect1 obj =new Connect1();
Connection con = obj.get_con();
}
catch(Exception ex)
{
	System.out.println(ex);
	}
try
{
	select sd = new select();
	sd.id1=request.getParameter("s1");
	ResultSet rs = sd.return_book();
	while(rs.next())
	{
		out.println("<tr>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td> <a href=delete.jsp?id="+rs.getString(1)+">RETURN</a></td>");
		out.println("</tr>");
		
	}
}
catch(Exception ex)
{
	System.out.println(ex);
}
}
%>

</table>

</form>
</center>
</fieldset>
			</div>
			<p class="meta"><a href="#" class="more">Read More</a> &nbsp;&nbsp;&nbsp;&raquo; &nbsp;&nbsp;&nbsp; <a href="#" class="comments">Comments (33)</a></p>
		</div>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<jsp:include page="rightnav.jsp"></jsp:include>
	</div>
	<!-- end sidebar -->
</div>
	<div style="clear:both">&nbsp;</div>
</div>
<!-- end page -->
<div id="footer">
	<p>&copy;2013 All Rights Reserved &nbsp;&bull;&nbsp; Design by <a href="">FHMJ</a> &nbsp;&bull;&nbsp; Guided by <a href="">Mr.Mayank Abiyani</a>.</p>
</div>
</body>
</html>
