<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="cl_data1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
<title>Beautiful Day</title>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1"/>
<link rel="stylesheet" type="text/css" href="default.css" media="screen"/>
</head>
<body>
<div class="top">
  <div class="header">
    <div class="left"> MJ Library Admin </div>
    <div class="right">
      <h2>Welcome, MJ</h2>
      <p>Here You can see Comment, Edit Student Table...And for further Add Functions</p>
    </div>
  </div>
</div>
<div class="container">
  <div class="navigation">
   <a href="control.jsp">View Comment</a> 
   <a href="http://www.free-css.com/">View Students</a> 
   <a href="admin.jsp">Home</a> 
   <a href="http://www.free-css.com/">Maecenas</a> 
   <a href="http://www.free-css.com/">Sodales</a>
    <div class="clearer"><span></span></div>
  </div>
  <div class="main">
    <div class="content">
      <h1>Hiii...Admin</h1>
      <div class="descr">Aug 13, 2013 by MJ</div>
      
      <blockquote>
        <p>Welcome welcome Welcome</p>
      </blockquote>
	
		<fieldset>
<center>

<%

String c_name = "";
String c_mail = "";
String c_comment = "";
String flag="";
Connection con = null;


if(request.getParameter("c_name")!=null)
{
	try
	{
		Connect1 obj = new Connect1();
		con= obj.get_con();
	
		c_name = request.getParameter("c_name");
		select sd= new select();
		sd.c_name=c_name;
		ResultSet rs = sd.select_cmnt_name();
		while(rs.next())
		{
			c_name = rs.getString(1);
			c_mail = rs.getString(2);
			c_comment = rs.getString(3);
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
		<td> <input type="text"  name="t1"  value="<%=c_name %>" > </td>
	</tr>
	<tr>
		<td> mail </td>
		<td> <input type="text"  name="t2"  value="<%=c_mail %>" > </td>
	</tr>
	<tr>
		<td> comment</td>
		<td> <textarea rows="2" cols="30" name="t3"><%=c_comment %></textarea> </td>
	</tr>
	<tr>
		<td> 
		</td>
		<td><input type ="submit"  value="Publish" name="sub1"></td> 
		</tr>
		</table>
		</form>
		
		<%
		if(request.getParameter("sub1")!=null)
		{
				try
				{
				
					String name=request.getParameter("t1");
					String mail = request.getParameter("t2");
					String comment = request.getParameter("t3");
					String flag1 = "active";
					edit ed = new edit();
					ed.n_name1= name;
					ed.n_mail=mail;
					ed.n_comment=comment;
					ed.n_flag=flag1;
					
					int s =ed.update_cmnt();
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
		
		%>
		
		
</center>
</fieldset>
<fieldset>
<form method="post" action="control.jsp">
		<input type="submit" name="sub2" value="Back to Control">
		</form>
		</fieldset>
     
      <h1>Interdum</h1>
      <div class="descr">May 24, 2006 by Lectus</div>
      <p>Praesent nisi sem</p>
      <code>margin-bottom: 12px;
      font: normal 1.1em "Lucida Sans Unicode",serif;
      background: url(img/quote.gif) no-repeat;
      padding-left: 28px;
      color: #555;</code>
      
    </div>
    <div class="sidenav">
      <h2>Categories</h2>
      <ul>
        <li><a href="control.jsp">View Comment</a></li>
        <li><a href="student.jsp">Student Data</a></li>
        <li><a href="http://www.free-css.com/">semper</a></li>
        <li><a href="http://www.free-css.com/">convallis</a></li>
      </ul>
      <h2>Another thing</h2>
      <ul>
        <li><a href="http://www.free-css.com/">consequat molestie</a></li>
        <li><a href="http://www.free-css.com/">sem justo</a></li>
        <li><a href="http://www.free-css.com/">semper</a></li>
        <li><a href="http://www.free-css.com/">sociis natoque</a></li>
      </ul>
      <h2>Third and last</h2>
      <ul>
        <li><a href="http://www.free-css.com/">sociis natoque</a></li>
        <li><a href="http://www.free-css.com/">magna sed purus</a></li>
        <li><a href="http://www.free-css.com/">tincidunt</a></li>
        <li><a href="http://www.free-css.com/">consequat molestie</a></li>
      </ul>
    </div>
    <div class="clearer"><span></span></div>
  </div>
  <div class="footer">&copy; 2006 <a href="http://www.free-css.com/">Website.com</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer">XHTML</a>. Template design by <a href="http://templates.arcsin.se">Arcsin</a> </div>
</div>
</body>
</html>
