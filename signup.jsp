<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

  <meta charset="UTF-8">
    <!-- for popup message start -->
<link href="<%=request.getContextPath() %>/res/message.css" rel="stylesheet" type="text/css" /> 

<script type="text/javascript" src="<%=request.getContextPath() %>/res/style.js"></script>	
<!-- for popup message end-->

  <title>Bloom Filter</title>

  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style3.css" media="screen" type="text/css" />
<IMG SRC="<%=request.getContextPath()%>/images/cooltext322483148074143.png" width=100% height="13%" style="position: absolute;top: -0.5px;left: 5px;" BORDER="0" ALT="">
</head>

<body onload="startTimer();">

 <%

String k=null;
k=request.getParameter("no");
 int no=0;
 if(k!=null)
 {
	 no=Integer.parseInt(k); 
 }



%>
 
 <%
if(no==1)
{
%>
<div style="position: absolute;top: 150px;">
<div class="error" id="message" >	
	<p> User ID Already Exist.....!</p>
</div>
</div>
<%}else if(no==3)
{
%>
<div style="position: absolute;top: 150px;">
<div class="error" id="message" >	
	<p> Fill out all the field Required format.....!</p>
</div>
</div>

<%} else
	if(no==4)
	{
		%>
		
		<div style="position: absolute;top: 150px;">
<div class="error" id="message" >	
	<p> Passwords not matching.....!</p>
</div>
</div>
		
		<%
		
	}else
{%>


<%} %>
 

<div style="position: absolute;top: 120px;right: 290px;" >

  <!-- multistep form -->
<form id="msform" action="<%=request.getContextPath()%>/Signup" method="post">
	<!-- progressbar -->
	
	
	<ul id="progressbar">
	
		<li class="active">Account Setup</li>
		<li>Personal Details</li>
		<li>Personal Details</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		<input type="text"  name="uid" placeholder="UserID" required/>
		<input type="password" name="pass" placeholder="Password" required/>
		<input type="password" name="cpass" placeholder="Confirm Password" required />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Personal Details</h2>
		<h3 class="fs-subtitle">Communication Details</h3>
		<input type="text" name="uname" placeholder="User Name" />
		<input type="email" name="email" placeholder="Email" />
		<input type="text" name="pno" placeholder="Phone Number" />
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">Work Details</h2>
		<h3 class="fs-subtitle">Professional</h3>
		<input type="text" name="grade" placeholder="Enter Your Grade" />
			
		<input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	</fieldset>
	</form>

</div>
<!-- jQuery -->
<script src="<%=request.getContextPath() %>/js/min1.js" type="text/javascript"></script>
<!-- jQuery easing plugin -->
<script src="<%=request.getContextPath() %>/js/min2.js" type="text/javascript"></script>

  <script src="<%=request.getContextPath() %>/js/index.js"></script>


</body>

</html>

