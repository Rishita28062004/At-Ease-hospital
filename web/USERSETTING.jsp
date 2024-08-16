
<html>
    <style> 
        .divtheme{
            background-image: url('media/canva doc pres.jpg');
            background-repeat:no-repeat;
            background-size: 100%;
            width: 100%;
            height: 500px;
          /*  margin-left:10%;
            margin-top: 80px;
            box-shadow: 5px 10px 10px black;*/
        }
        .tabtheme{
            height: 50px;
            width: 100%; 
             text-align: center;
             font-size:16px;
             font-family: arial;
             font-weight: bold;
           background-color:rgba(86,160,211,0.4);
               /*rgba(35,125,175,0.4);*/
                color:white;
        }
        .tdtheme:hover
        {
            background-color:#4B9CD3;
            color:white;
        }
        a {
            color:white;
            text-decoration:none;
            font-size: 18px;
       }
       .resettheme{
           height:20px;
           width:100%;
          text-align:center;
            font-size:20px;
           font-family: arial;
            font-weight: bold;
           background-color:#002244;
             
       }
        </style>
        <body> 

             <div class="divtheme">
               <%@include  file="usertop.jsp" %>
               <%@include file="SecurityGuard.jsp"%>
               <table class="resettheme" >
            <tr>
                <td><a href="PWDSETTING.jsp"> RESET PASSWORD </a></td>
                <td><a href="PERSONALINFO.jsp"> UPDATE PERSONAL INFO </a></td>
                <td><a href="USERDELETEACC.jsp"> DELETE ACCOUNT </a></td>
            </tr>
               </table>
            </div>
      
           
       </body>
</html>
