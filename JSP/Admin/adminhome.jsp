
<!DOCTYPE HTML>
<%@ page import="com.supportclass.*" %>
<html lang="en-US">
    <head>
        <title>blind storage</title>
        <meta http-equiv="x-ua-compatible" content="IE=edge" />
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        
   <link href="<%=request.getContextPath() %>/newcss/style.css" rel="stylesheet">
	
  <link href="<%=request.getContextPath() %>/newcss/style2.css" rel="stylesheet">
   <%

String id = session.getAttribute("userid").toString();


%>

    </head>
    <body >
     <IMG SRC="<%=request.getContextPath()%>/images/back.jpg" width=100% height="13%">
     
        
      
           
                <div style="position: absolute;top: 120px;color: blue; ">
                    
                   
                   
                   
                   <ul id="menu2" class="menu">
		
		<li tabindex="0">
			Menu
			<ul class="submenu wave">
				<li><a href="<%=request.getContextPath()%>/signup1.jsp" target="myframe">User Creation</a></li><li></li>
				<li><a href="<%=request.getContextPath()%>/JSP/User/users.jsp" target="myframe">User Details</a></li><li></li>
				<li><a href="<%=request.getContextPath()%>/JSP/Admin/cloud_config.jsp" target="myframe">Cloud Configuration</a></li><li></li>
				<li><a href="<%=request.getContextPath()%>/JSP/Admin/keygen.jsp?ownerid=<%=id%>" target="myframe">Key Setting</a></li><li></li>
				<li><a href="<%=request.getContextPath()%>/JSP/Admin/fileupload1.jsp" target="myframe">Upload Files</a></li><li></li>
				<li><a href="<%=request.getContextPath()%>/JSP/Admin/keyword_details.jsp" target="myframe">Keyword Ranking</a></li><li></li>
			<%-- 	<li><a href="<%=request.getContextPath()%>/JSP/Admin/view_request.jsp" target="myframe">User Request</a></li><li></li> --%>
				 <li><a href="<%=request.getContextPath() %>/ChangePass?name=<%=id%>&no=1&id=<%=id %>" target="myframe">Change Password</a></li><li></li>
				     <li><a href="<%=request.getContextPath()%>/SignOut?no=1">LogOut</a></li>
			</ul>
		
	</ul>
               
               </div>    
                  
        
        <div id="content" class="snap-content" >
           
                
                <IMG SRC="<%=request.getContextPath()%>/images/name1.png" width=100% height="13%" style="position: absolute;top: -0.5px;left: 5px;" BORDER="0" ALT="">
    
    	<div style="position: absolute;top: 100px;left: 500px;font-family: monotype corsiva;font-size: 20px;">
    		Welcome ,<%=id%>
    		</div>
                
              
                
                <iframe style="position: absolute;top: 150px;width: 700px;height: 450px;left: 220px;border-color: #556B2F;" src="<%=request.getContextPath() %>/signup1.jsp"  frameborder="0"  name="myframe" >
                
               
                </iframe>
           
        </div>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/snap.js"></script>
        <script type="text/javascript">
            var snapper = new Snap({
                element: document.getElementById('content')
            });
            
        </script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/demo.js"></script>
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>       
   
    
    </body>
</html>
