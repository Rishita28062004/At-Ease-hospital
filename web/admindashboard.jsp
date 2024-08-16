
<!DOCTYPE html> 
<html>  
    <style> 
        .divtheme
        {
            background-image: url('media/admin.jpg');
            background-repeat:no-repeat;
            background-size: 100%;
            width:100%;
            height: 600px;
            /*margin-left:10%;
            margin-top:80px;
            box-shadow: 5px 10px 10px black;*/
        }
        .tabtheme{
            height: 50px;
            width: 100%; 
             text-align: center;
             font-size:15px;
             font-family: arial;
             font-weight: bold;
             background-color:rgba(35,125,175,0.4);
             
                
        }
        .tdtheme:hover
        {
            background-color: white;
            color:white;
        }
        </style>
        <body> 
           
            <div class="divtheme">
                <%@include file="admintop.jsp" %>
            </div>
           
       </body>
</html>

