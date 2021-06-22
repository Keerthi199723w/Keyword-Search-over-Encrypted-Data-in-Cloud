<!doctype html>
<%@ page import="com.supportclass.*" %>
<html lang="en">
<head>

<title>Cloud_Query</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">


	
</head>
<body>


<font style="position: absolute;top: 180px;left: 180px;font-family: monotype corsiva;font-size: 30px;"></font>

<%! 
public int convert(String str) 
{ 
	int conv=0; 
	if(str==null) 
	{ 
		str="0"; 
	} 
	else if((str.trim()).equals("null")) 
	{ 
		str="0"; 
	} 
	else if(str.equals("")) 
	{ 
		str="0"; 
	} 
	try
	{ 
		conv=Integer.parseInt(str); 
	} 
	catch(Exception e) 
	{ 
	} 
	return conv; 
	} 
%>
<%int no=convert(request.getParameter("no"));
if(no==1)
{%>
<div style="color: red;">
	<p id="message">Key Generated Successfully....!</p>
</div>
<%}if(no==2)
{%>
<div style="color: red;">
	<p id="message">Opp's.......Went wrong</p>
</div>
<%}%>
</body>
</html>

