<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="x-ua-compatible" content="IE=edge" />
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        
   <link href="<%=request.getContextPath() %>/newcss/style.css" rel="stylesheet">
	
  <link href="<%=request.getContextPath() %>/newcss/style2.css" rel="stylesheet">
<link rel="stylesheet" href="res/style.css">


 <%

String id = session.getAttribute("userid").toString();


%>

</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 <IMG SRC="<%=request.getContextPath()%>/images/Light-Colored-Wooden-Background.jpg" width=100% height="13%">
     
        
      
            <div style="position: absolute;top: 120px; left:-85px; color: blue; ">
                    
                   
                   
                   
                   <ul id="menu2" class="menu">
               

  

  
<div class="type-3">
  <div>
    <a href="<%=request.getContextPath()%>/signup1.jsp" target="myframe" class="btn btn-1">
      <span class="txt">User Creation</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>

  <div>
    <a href="<%=request.getContextPath()%>/JSP/User/users.jsp" target="myframe" class="btn btn-2">
      <span class="txt">User Details</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
  <div>
    <a href="<%=request.getContextPath()%>/JSP/Admin/cloud_config.jsp" target="myframe" class="btn btn-3">
      <span class="txt">Cloud Details</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
<%--    <div>
    <a href="<%=request.getContextPath()%>/JSP/Admin/keygen.jsp?ownerid=<%=id%>" target="myframe" class="btn btn-4">
      <span class="txt">Key Setting</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
   --%>
  
   <div>
    <a href="<%=request.getContextPath()%>/JSP/Admin/fileupload1.jsp" target="myframe" class="btn btn-5">
      <span class="txt">Upload Files</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
  
   <div>
    <a href="<%=request.getContextPath()%>/JSP/Admin/keyword_details.jsp" target="myframe" class="btn btn-6">
      <span class="txt">Keyword Rank</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
<%--   
   <div>
    <a href="<%=request.getContextPath()%>/JSP/Admin/view_request.jsp" target="myframe" class="btn btn-7">
      <span class="txt">User Request</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
  
  --%>
  
  
  
  <div>
    <a href="<%=request.getContextPath() %>/ChangePass?name=<%=id%>&no=1&id=<%=id %>" target="myframe" class="btn btn-8">
      <span class="txt">Change Pass</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
  
  
  <div>
    <a href="<%=request.getContextPath()%>/SignOut?no=1" class="btn btn-9">
      <span class="txt">Logout</span>
      <span class="round"><i class="fa fa-chevron-right"></i></span>
    </a>
  </div>
  
  
  
</div>
    </ul>
               
               </div>    
                  
    
  <div id="content" class="snap-content" >
           
                
                <IMG SRC="<%=request.getContextPath()%>/images/cooltext322483148074143.png" width=100% height="13%" style="position: absolute;top: 8px;left: 2px;" BORDER="0" ALT="">
    
    	<div style="position: absolute;top: 100px;left: 500px;font-family: monotype corsiva;font-size: 30px;">
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