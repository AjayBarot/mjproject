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
		
		<center><h1 class="title">Edit Details Of Student</h1></center>
		
			
			
			<div class="entry">
				<blockquote>
					<p>&#8220;Please Kindly Edit And then Press Update data.&#8221;</p>
				</blockquote>
				<fieldset>
<center>
<%

String id = "";
String name = "";
String address = "";
String city = "";
String fees = "";
Connection con = null;
%>
<%


if(request.getParameter("id")!=null)
{
	try
	{
		Connect1 obj = new Connect1();
		con= obj.get_con();
	
		id = request.getParameter("id");
		edit ed = new edit();
		ed.id = id;
		ResultSet rs = ed.edit_data();
		while(rs.next())
		{
			name = rs.getString(1);
			address = rs.getString(2);
			city = rs.getString(3);
			fees = rs.getString(4);
		}
	}
	catch(Exception ex)
	{}
}

%>

<form method="post">
<table>
	<tr>
		<td> Name </td>
		<td> <input type="text"  name="t1"  value="<%=name %>" > </td>
	</tr>
	<tr>
		<td> Address </td>
		<td> <textarea rows="2" cols="30" name="t2"><%=address %></textarea> </td>
	</tr>
	<tr>
		<td> City </td>
		<td> <input type="text"  name="t3"  value="<%=city %>" > </td>
	</tr>
	<tr>
		<td> Fees </td>
		<td> <input type="text"  name="t4"  value="<%=fees %>" > Rs/- </td>
	</tr>
	
	<tr>
		<td> 
		<%
		if(request.getParameter("sub1")!=null)
		{
				try
				{
				String n_name = request.getParameter("t1");
				String n_address = request.getParameter("t2");
				String n_city = request.getParameter("t3");
				String n_fees = request.getParameter("t4");
				
				
				edit ed1 = new edit();
				ed1.id=id;
				ed1.n_name=n_name;
				ed1.n_address=n_address;
				ed1.n_city=n_city;
				ed1.n_fees=n_fees;
				
				int s = ed1.update_data();
				
				if(s==1)
				{
						out.println("<font color=red size=5> Data Updated </font>");
				}
				else
				{
						out.println("<font color=green size=5> Plz Wait </font>");
				}
				}
				catch(Exception ex)
				{
						out.println(ex);
					
				}
		}
		
		%></td>
		<td><input type ="submit"  value="Submit For Change" name="sub1"></td> 
		</tr>
		
		</table>
		</form>
		<form method="post" action="student.jsp">
		<table>
		<tr>
		<td>
		<input type="submit" name="sub2" value="Back to Student Details"></input>
		
	</td>
		</tr></table>
		</form>
	<hr></hr>
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
    