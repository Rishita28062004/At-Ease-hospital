
<html>
    <style> 
        .divtheme{
            background-image:url('media/password.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            width:100%;
            height: 500px;
        }
        .tabletheme{
            width:100%;
            height: 70px;
           /*font-weight: bold;
            //background-color:#B8860B;*/
            background-color:rgba(30,144,255,0.5);
            color:white;
            text-align: center;
            font-size: 16px;
            font-family: arial;
        }
       .tdtheme:hover{
            background-color:green;
            
       }

a{
    color:white;
    text-decoration: none;
    font-size:18px;
}
.texttheme{
    width:200px;
    height:30px;
    /*border-radius: 20px;
    //background-color:lightblue;
    //border:solid;   //inset,outset,ridge,solid,dotted
    //border-color:red;*/
    border:ridge;
  
}
.signuptheme{
/* border:solid; 
 border-color:white;'*/
 background-color:rgba(255,255,255,0.2)  ; 
 box-shadow: 10px 10px 10px black;
 font-weight:bold;
 margin-top:30px; 
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
  
    <body  bgcolor="black">


                 
        <div  class="divtheme">
<%@include  file="usertop.jsp" %>
 <%@include file="SecurityGuard.jsp"%>                  
<form  action="pwdsettingjavacode.jsp">
               <table  align="center" border="0"  cellspacing="2"  cellpadding="3"   class="signuptheme">
            <tr align="center">
                <td  colspan="2">
                <h1>RESET PASSWORD</h1>
                </td>
            </tr>                                
            <tr align="center">
                <td>Id</td>
            </tr>
              <tr align="center">
                  <td><input type="text" name="userid" value="<%=session.getAttribute("CALL")%>"  placeholder="Enter User ID here" class="texttheme"></td>
              </tr>
                <tr align="center">
                <td>Old Password</td>
                </tr>
                <tr align="center">
                <td><input type="password" name="password"  placeholder="Enter old password here"  class="texttheme"></td>
                </tr>
                
                
                <tr align="center">
                <td>New Password</td>
                </tr>
                <tr align="center">
                <td><input type="password" name="npass"  placeholder="Enter new password here"  class="texttheme"></td>
                </tr>
                
                <tr align="center">
                <td>Confirm New Password</td>
                </tr>
                
                <tr align="center">
                <td><input type="password" name="cnpass"  placeholder="Enter contact here"  class="texttheme"></td>
                </tr>
                
            
            
            <tr  align="center">
                <td colspan="2"><input type="submit"  value="Change" class="buttontheme">
                <input type="reset"  value="reset" class="buttontheme">
                </td>
            </tr>
        </table>
</form>
        
        </div>
        <div>
            
        </div>
    </body>
</html>