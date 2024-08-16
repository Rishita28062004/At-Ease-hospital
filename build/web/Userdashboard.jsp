<%
 String userID=(String)session.getAttribute("CALL");
%>
<html> 
    <style> 
        .divtheme{
            background-image: url('media/10130.jpg');
            background-repeat:no-repeat;
            background-size: 100%;
            width: 80%;
            height: 500px;
          /*  margin-left:10%;
            margin-top: 80px;
            box-shadow: 5px 10px 10px black;*/
        }
        .tabtheme{
            height: 60px;
            width: 127%; 
             text-align: center;
             font-size:16px;
             font-family: arial;
             font-weight: bold;
           background-color:rgba(35,125,175,0.4);
                color:white;
        }
        .tdtheme:hover
        {
            background-color: darkcyan;
            color:white;
        }
        </style>
        <body> 
           <font color="red"> WELCOME <%=userID %> </font>
            <div class="divtheme">
               <%@include  file="usertop.jsp" %>
            
            </div>
           
       </body>
</html>
