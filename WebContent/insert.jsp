<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="cl_data1.*" import ="java.sql.*"%>
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
		
		<center><h1 class="title">Student Table</h1></center>
		
			<div class="entry">
				<blockquote>
					<p>&#8220;Add Data Of Student.&#8221;</p>
				</blockquote>
				<fieldset>
				<center>
<form method="post" >
<table align=center  cellpadding=3  cellspacing=5 border="2">
<tr>
<td >Student Id</td>
<td><input type="text" value="" name="t1"></td>
</tr>
<tr>
<td>Student Name</td>
<td><input type="text" value="" name="t2"></td>
</tr>
<tr>
<td>Student Address</td>
<td><input type="text" value="" name="t3"></td>
</tr>
<tr>
<td>Student City</td>
<td><input type="text" value="" name="t4"></td>
</tr>
<tr>
<td>Student fees</td>
<td><input type="text" value="" name="t5"></td>
</tr>
<tr>
<td bgcolor="#808080" onMouseOver="SetBG('#808080')"><img src="" width=18 height=18 border=0></td>
<td>

</td>
<td><input type="submit" value="Submit Data" name="sub1"></td>
</tr>

</table>
</form>
<%

try
{
	if(request.getParameter("sub1")!=null)
	{
	Connect1 obj = new Connect1();
	Connection con = obj.get_con();
	
	insert sd = new insert();
	
	sd.id=request.getParameter("t1");
	sd.name=request.getParameter("t2");
	sd.address=request.getParameter("t3");
	sd.city=request.getParameter("t4");
	sd.fees=request.getParameter("t5");
	
	
	
int c= sd.insert_student();
	
	if(c==1)
	{
		out.println("Data Inserted");
	}
	else
	{
		out.println("Try Again");
	}
	}
	
}
catch(Exception ex)
{
	out.println(ex);	
}

%>

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
