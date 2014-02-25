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
    <div class="left"> MJ Library</div>
    <div class="right">
      <h2>Welcome, Guest</h2>
      <p>Here You can see Comment, Edit Student Table...And for further Add Functions</p>
    </div>
  </div>
</div>
<div class="container">
  <div class="navigation">
   <a href="control.jsp">View Comment</a> 
   <a href="http://www.free-css.com/">View Students</a> 
   <a href="http://www.free-css.com/">Elemen</a> 
   <a href="http://www.free-css.com/">Maecenas</a> 
   <a href="http://www.free-css.com/">Sodales</a>
    <div class="clearer"><span></span></div>
  </div>
  <div class="main">
    <div class="content">
      <h1>Hiii...Guest</h1>
      <div class="descr">Aug 13, 2013 by MJ</div>
      
      <blockquote>
        <p>Welcome welcome Welcome</p>
      </blockquote>




<%
try
{
	Connect1 obj = new Connect1();
	Connection con = obj.get_con();
	select sd = new select();
	ResultSet rs = sd.select_cmnt_client();
	
	while(rs.next())
	{
		
		%><hr></hr>
		<br></br>
		<br></br>
		<%
		
		
		out.println("<h1>"+rs.getString(1)+" Says,<h1>");
		%>
		<blockquote><h6>  <%=rs.getString(3)%> </h6></blockquote>
		   <%
		   
		   out.println("<h4>Email is"+rs.getString(2)+"<h4>");	
	}
	
}
catch(Exception ex)
{
	out.println(ex);
}
%>

<hr></hr>
<br></br>
<h1>Submit Your Comments</h1>
<form method="post" >
<table align=center  cellpadding=3  cellspacing=5  width="400px">
<tr>
<td>Your Name</td>
<td><input type="text" value="" name="t1"></td>
</tr>
<tr>
<td>E-mail</td>
<td><input type="text" value="" name="t2"></td>
</tr>
<tr>
<tr>
<td>Comments</td>
<td>
<input type="text" value="" name="t3">
</td>
</tr>
<tr >
<td>Submit--></td>
<td ><input type="submit" name="sub1" value="submit"></td>
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
	
	sd.c_name=request.getParameter("t1");
	sd.c_mail=request.getParameter("t2");
	sd.c_comment=request.getParameter("t3");
	
	
	
int c = sd.insert_comnt();
	
	if(c==1)
	{
		out.println("<h1>Comment Sucessfully Submited</h1>");
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




</body>
</html>