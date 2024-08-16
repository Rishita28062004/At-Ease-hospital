
<html>
    <style> 
        .divtheme{
            background-image:url('media/doc patient.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            width:100%;
            height: 500px;
        }
        /*.tabletheme{
            width:100%;
            height: 70px;
            font-weight: bold;
            background-color:#B8860B;
            background-color:rgba(30,144,255,0.5);
            color:black;
            text-align: center;
            font-size: 16px;
            font-family: arial;
        }*/
       .tdtheme:hover{
            background-color:white;
            color:black;
       }
        

a{
    color:black;
    text-decoration: none;
    font-size:18px;
}
.texttheme{
    width:250px;
    height:30px; 
    /*border-radius: 20px;
    //background-color:lightblue;
    //border:solid;   //inset,outset,ridge,solid,dotted
    //border-color:red;*/
}
.signuptheme{
/* border:solid; 
 border-color:white;'*/
 margin-left:55px;
 background-color:rgba(255,255,255,0.2)  ; 
 box-shadow: 10px 10px 10px black;
 margin-top:50px;
 background-color:rgba(240,255,255,0.6);
 font-weight: bold;
}
.buttontheme{
    width:100px;
height: 40px;
background-color:black;
color:white;
font-size: 20px;
border-radius: 130px;

}

    </style>
  
    <body>


        <div  class="divtheme">
<%@include  file="usertop.jsp" %>
<%@include file="SecurityGuard.jsp"%>
                                
<marquee  behavior="slide" scrollamount="20"   direction="up">
  
   <form  action="Feedbackjavacode.jsp">
  <table  align="center" border="0"  cellspacing="4"  cellpadding="4" class="signuptheme">
            <tr align="center">
                <td  colspan="2">
                  <h1>FEEDBACK FORM</h1>
                </td>
            </tr>                 
            <tr>
                <td>Full Name</td>
                <td><input type="text" name="Name" placeholder="Enter full name here"  class="texttheme"></td>
            </tr>
            
            <tr>
                <td>Feedback</td>
                <td colspan="3"><textarea name="feedback"  placeholder="Enter feedback" class="textareatheme"></textarea></td>
            </tr>
            
            <tr  align="center">
                <td colspan="4"><input type="submit"  value="submit" class="buttontheme"></td>
            </tr>
        </table>
           </form>  
    </marquee>

        </div>
        <div>
            
        </div>
    </body>
</html>