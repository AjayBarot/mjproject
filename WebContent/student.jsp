<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import= "java.sql.*" import="cl_data1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8;charset=ISO-8859-1" />

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
		
		<center><h1 class="title">Details of all Student</h1></center>
		
			
			
			<div class="entry">
				<blockquote>
					<p>&#8220;Here You can See and Edit All Data of Student.&#8221;</p>
				</blockquote>
				
<fieldset>
<center>
<form method="post" action="insert.jsp">
<hr></hr>
<hr></hr>
<table border="1">
<tr>
<th>Name</th>
<th>Address</th>
<th>City</th>
<th>Fees</th>
<th>Edit</th>
<th>Remove</th>
</tr>

<%
try
{
Connect1 obj =new Connect1();
Connection con = obj.get_con();

select sd = new select();
ResultSet rs = sd.select_student();
while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("<td>"+rs.getString(5)+"</td>");
	out.println("<td><a href=sedit.jsp?id="+rs.getInt(1)+">Edit</a></td>");
	out.println("<td><a href=delete.jsp?id="+rs.getInt(1)+">Remove</a></td>");
}	
	out.println("</tr>");
}
catch(Exception ex)
{
	out.println(ex);
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

