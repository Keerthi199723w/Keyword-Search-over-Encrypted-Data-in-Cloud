<%@ page import="java.sql.*" %>
<%@ page import="com.Database.*" %>
<%@ page import="com.supportclass.*" %>
<html>
<head>
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

<link href="<%=request.getContextPath()%>/Res/CSS/style1.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/pagination.js"></script>
</head>
<body>
<center>
<%


ResultSet rs = AdminDAO.getKeyword_Weight();




%>
<br></br>

<div style="position: absolute;top: 5px;left:250px;">
<p style="color: blue;"><b>KeyWord Ranking Details</b></p>
</div>
<p style="color: blue;">
<div class="CSSTableGenerator" style="width:580px;height:150px;">
<table class="pretty-table" border="1" id="user">

  
    <th scope="col">Key No</th>
    <th scope="col"> File Name</th>
    <th scope="col"> Keyword</th>
    <th scope="col"> Count</th>
     <th scope="col">Weightage Rank</th>
    
  
<%while(rs.next())
	{%>
  <tr>
    <td><%=rs.getInt(1) %></td>
    	<td><%=rs.getString(2)%></td>
    	<td><%=rs.getString(3)%></td>
    	<td><%=rs.getString(4)%></td>
    	<td><%=rs.getString(5)%></td>
    	
  </tr>
<%
}
%>

</table>
</div>
 </p>
</center>

	
	<div id="pageNavPosition" style="position:absolute;top:380px;left:200px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('user',10); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
</body></html>