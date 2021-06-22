
<!DOCTYPE HTML>
<%@ page import="com.supportclass.*" %>
<html lang="en-US">
    <head>
        <title>Cloud_DataRetrieval</title>
        <meta http-equiv="x-ua-compatible" content="IE=edge" />
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        
          
   <link href="<%=request.getContextPath() %>/newcss/style.css" rel="stylesheet">
	
  <link href="<%=request.getContextPath() %>/newcss/style2.css" rel="stylesheet">
   <link rel="stylesheet" href="res/style.css">
   <%
HttpSession hs = request.getSession();

String id = session.getAttribute("userid").toString();




%>

    </head>
    <body >
     <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <IMG SRC="<%=request.getContextPath()%>/images/Light-Colored-Wooden-Background.jpg" width=100% height="13%">
     
        
      
            <div style="position: absolute;top: 120px; left:-85px; color: blue; ">
                    
                   
                   
                   
                   <ul id="menu2" class="menu">
               
		
		<div class="type-3">
  <div>
    <a href="<%=request.getContextPath()%>/Profile_User" target="myframe" target="myframe" class="btn btn-1">
      <span class="txt">User Profile</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
<%-- 
  <div>
    <a href="<%=request.getContextPath()%>/JSP/User/key_request.jsp" target="myframe" target="myframe" class="btn btn-2">
      <span class="txt">Send_Request</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
   --%>
  <div>
    <a href="<%=request.getContextPath()%>/JSP/User/search_content.jsp" target="myframe" class="btn btn-3">
      <span class="txt">Search_Keyword</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
   <div>
    <a href="<%=request.getContextPath() %>/ChangePass_User?no=1&id=<%=id %>" target="myframe" target="myframe" class="btn btn-4">
      <span class="txt">Change_Pass</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
  <div>
    <a href="<%=request.getContextPath()%>/SignOut?no=1" class="btn btn-4">
      <span class="txt">LogOut</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
            
               
                     
     </div>
    </ul>
               
               </div>    
                                    
                       
        
        
        
        
        
        
      
        <div id="content" class="snap-content" >
           
                
                <IMG SRC="<%=request.getContextPath()%>/images/cooltext322483148074143.png" width=98% height="14%" style="position: absolute;top: -0.5px;left: 5px;" BORDER="0" ALT="">
    
    	<div style="position: absolute;top: 100px;left: 500px;font-family: monotype corsiva;font-size: 30px;">
    		Welcome ,<%=id%>
    		</div>
                
              
                
              
                <iframe style="position: absolute;top: 150px;width: 700px;height: 450px;left: 220px;border-color: #556B2F;" <%-- src="<%=request.getContextPath() %>/signup1.jsp" --%>  frameborder="0"  name="myframe" >
                
               
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
