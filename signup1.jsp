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

    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style4.css" media="screen" type="text/css" />

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

<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#000000;font-family: monotype corsiva;">	
    		<p>User ID Already Exist.....!</p>
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
		
		
			<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#000000;font-family: monotype corsiva;">	
    		<p>Passwords are not matching.....!</p>
    	</div>
		
	
		<%
		
	}else
		if(no==2)
		{
			
			%>
			
			<!-- <div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color:#000000;font-family: monotype corsiva;">	
    		<p>User Created Successfully.....!</p>
    	</div> -->
			
			
			<script type="text/javascript">
			
			alert('User Created Successfully.....!')
			</script>
			<%
			
			
		}else
			
		
		
{%>


<%} %>
 



  <!-- multistep form -->
<form id="msform" action="<%=request.getContextPath()%>/Signup" method="post">
	<!-- progressbar -->
	
	
<h2> Create User</h2>
	<!-- <!-- fieldsets -->
<!-- 	<fieldset> -->
		<!-- <h2 class="fs-title">Create your account</h2> -->
		<!-- <h3 class="fs-subtitle">This is step 1</h3> -->
		<input type="text"  name="uid" placeholder="UserID" required/>
		<input type="password" name="pass" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required" />
		<input type="password" name="cpass" placeholder="Confirm Password" required />
		<!-- <input type="button" name="next" class="next action-button" value="Next" /> -->
	<!-- </fieldset>
	<fieldset> -->
<!-- 		<h2 class="fs-title">Personal Details</h2>
		<h3 class="fs-subtitle">Communication Details</h3> -->
		<input type="text" name="uname" placeholder="User Name" />
		<input type="email" name="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" />
		<input type="text" name="pno" placeholder="Phone Number" pattern="[789][0-9]{9}" required="required"  />
		<!-- <input type="button" name="previous" class="previous action-button" value="Previous" />
		<input type="button" name="next" class="next action-button" value="Next" /> -->
	<!-- </fieldset>
	<fieldset> -->
		<!-- <h2 class="fs-title">Work Details</h2>
		<h3 class="fs-subtitle">Professional</h3> -->
		<!-- <input type="text" name="grade" placeholder="Enter Your Grade" /> -->
			<label>Select Department :&nbsp;&nbsp;</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="grade">
                <option value="1">CSE</option>
                <option value="2">MECH</option>
                <option value="3">ECE</option>
               
            </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
		<!-- <input type="button" name="previous" class="previous action-button" value="Previous" /> -->
		<input type="submit" name="submit" class="submit action-button" value="Submit" />
	<!-- </fieldset> -->
	</form>


<!-- jQuery -->
<script src="<%=request.getContextPath() %>/js/min1.js" type="text/javascript"></script>
<!-- jQuery easing plugin -->
<script src="<%=request.getContextPath() %>/js/min2.js" type="text/javascript"></script>

  <script src="<%=request.getContextPath() %>/js/index.js"></script>


</body>

</html>