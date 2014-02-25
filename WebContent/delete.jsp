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
		
		<center><h1 class="title">Service IS Worship</h1></center>
		
			<h1 class="title"></h1>
			
			<div class="entry">
				<blockquote>
					<p>&#8220;Hurry..!! Issues More Book...!.&#8221;</p>
				</blockquote>
				<%
if(request.getParameter("id")!=null)
{
	try
	{
		String id = request.getParameter("id");
		Connect1 obj = new Connect1();
		Connection con = obj.get_con();
				
		delete de = new delete();
		de.id= id;
		int s = de.delete_data1();
		if(s==1)
		{
				out.println("Book SuccessFully Returned");
		}
	}
	catch(Exception ex)
	{		
		out.println(ex);
	}
}
%>

<h1><a href="return.jsp">Return More</a></h1>
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

</body>
</html>