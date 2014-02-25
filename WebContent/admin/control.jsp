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
<form method="post" >

<table border="1" width="400px">
<tr>
<th>Name</th>
<th>mail</th>
<th>Comment</th>
<th>Status</th>
<th>Publish</th>
<th>Hide</th>
<th>Delete</th>
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

ResultSet rs = sd.select_cmnt();


while(rs.next())
{
	
	out.println("<tr>");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");	
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("<td> <a href=publish.jsp?c_name="+rs.getString(1)+">Publish</a></td>");
	out.println("<td> <a href=hide.jsp?c_name="+rs.getString(1)+">Hide Comment</a></td>");
	out.println("<td> <a href=delete.jsp?c_name="+rs.getString(1)+">delete</a></td>");
	out.println("</tr>");
}	
}
catch(Exception ex)
{
	System.out.println(ex);
}
	%>
</table>
</form>
</center>
</fieldset>
</body>
</html>
      
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
