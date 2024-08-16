<!DOCTYPE html> 
<html> 
    <style>
        .divtheme{
            background-image: url('media/OPERATOR_1.jpg');
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
             font-size:15px;
             font-family: arial;
             font-weight: bold;
           background-color:rgba(35,125,175,0.4);
                color:white;
        }
        .tdtheme:hover
        {
           background-color: darkcyan;
            
        }
        </style>
        <body> 
                
            <div class="divtheme">
                <table WIDTH ="100%"  class="tabtheme">
               <tr>  
                <td class ="tdtheme"><a href="DOCTORPWDSETTING.jsp"  style="color:white">SETTINGS</a></td>
                <td class ="tdtheme"><a href="DOCVIEWSLOT.jsp"  style="color:white">VIEW BOOKING</a></td>
                <td class ="tdtheme"><a href="DOCVIEWFEEDBACK.jsp" style="color:white">VIEW FEEDBACK </a></td>
                <td class ="tdtheme"><a href="operatordashboard.jsp" style="color:white">LOG OUT</a></td>
                   
                 </tr>
                </table>
            </div>
           
        </body>
</html>  
 
