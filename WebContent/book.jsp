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
		
		<center><h1 class="title">Issue Book</h1></center>
		
			
			<div class="entry">
				<blockquote>
					<p>&#8220;You can Issue Books to Students.
					You Can Issue Number Of books to each students.Nobody can Stop You.&#8221;</p>
				</blockquote>
				<fieldset>
				<center>
				<%

try
{
	if(request.getParameter("sub1")!=null)
	{	
	Connect1 obj = new Connect1();
	Connection con = obj.get_con();
	insert is= new insert();
	is.b_id=request.getParameter("t1");
	is.b_name=request.getParameter("t2");
	is.idate= request.getParameter("t3");
	is.id=request.getParameter("s1");
	int c = is.insert_book();
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

<form method="post" >
<table>
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
{System.out.println(ex);}
%>

</tr>

<tr>
<th>Book Id</th>
<td><input type="text" value="" name="t1"></td>
</tr>
<tr>
<th>Book Name</th>
<td><input type="text" value="" name="t2"></td>
</tr>
<th>Today Date</th>
<td><input type="text" value="" name="t3"></td>
</tr>
<tr>
<th>----></th>
<td><input type="submit" value="Submit Data" name="sub1"></td>
</tr>
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





