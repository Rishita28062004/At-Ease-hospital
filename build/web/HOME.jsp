<!DOCTYPE html>
<html>  
    <style>   
        .divtheme{
            background-image: url('media/chinese medical .jpg');
            background-repeat:no-repeat;
            background-size: 100%;
            width: 100%;
            height: 500px;
          /*  margin-left:10%;
            margin-top: 80px;
            box-shadow: 5px 10px 10px black;*/
        }
        .tabtheme{
            height: 60px; 
            width: 100%; 
             text-align: center;
             font-size:16px;
             font-family: arial;
             font-weight: bold;
           background-color:rgba(35,125,175,0.4);
                color:white;
        }
        .abtheme:hover
        {
            background-color: white;
            
        } 
        a {
            color:white;
            text-decoration:none;
            font-size: 18px;
       }
       .abovediv
       {
           height: 30px;
           width: 100%; 
           background-color:#40B5AD;
           text-align: left; 
       }
       .buttontheme{
           width:70px;
        height: 20px;
        background-color:black;
        color:white;
        font-size: 10px;
       }
       .tabletheme{
           height:50px;
           width: 50px;
           background-color:white;
           margin-top: 100px;
           margin-left: 100px;
       }
        </style>
        <body> 
            <div class ="abovediv">
                <table WIDTH =100%> 
                 <tr>
                     <td class ="abtheme"> <a href="tel:7974994236">
                         <img src ="media\call.png" height="30px" width="30px"  style="margin-left:50px" >
                     </td>
                     <td  class = "abtheme"><a href="http://wa.me/9827949222">
                         <img src ="media\whatsapp.png" height="30px" width="30px"  style="margin-left:50px" >
                     </td>
                     <td  class = "abtheme"> <a href="mailto:glance.rishitagun@gmail.com">
                         <img src ="media\mail.png" height="30px" width="30px"  style="margin-left:50%" >
                         </a>
                     </td>
                  </tr> 
                </table> 
            </div>          
            <div class="divtheme">
               
               <%@include file="sitetop.jsp"%>
               <marquee behavior="slide" scrollamount="10" direction="up">
               <form action ="Userloginjavacode.jsp">
              <table  align="left" cellspacing="5"  cellpadding="5" class="tabletheme">
                  
            <tr align="center">
                <td  colspan="2"> 
                   <img src="media/login.png" height="50px" width="50px" style="margin-right:50px" >   
                </td> 
            </tr>                            
            <tr>
                <td>User Id:</td>
                <td><input type="text" placeholder="Enter id here" name="userid"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="text" placeholder="Enter the password" name="password"></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                   <input type="submit" value="LOGIN" class="buttontheme">
                   <a href="HOME.jsp"> <input type="reset"  value="reset" class="buttontheme"> 
                </td> 
            </tr>
            </table>
               </form>
                   </marquee> 
            </div>
               
             <div>
                   
             </div>
      </body>
</html> 
         