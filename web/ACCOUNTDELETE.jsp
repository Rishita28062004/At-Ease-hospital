<html>
    <style> 
        .divtheme{
            background-image:url('media/secuirty.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            width:100%;
            height: 500px;
        }
        .tabletheme{
            width:100%;
            height: 70px;
            /*font-weight: bold;
            //background-color:#B8860B;
            background-color:rgba(30,144,255,0.5);*/
            color:black;
            text-align: center;
            font-size: 16px;
            font-family: arial;
        }
       .tdtheme:hover{
            background-color:black;
            color:black;
        }

a{
    color:white;
    text-decoration:none;
    font-size:18px;
}
.texttheme{
    width:250px;
    height: 30px;
    border-radius: 20px;
   /* //background-color:lightblue;
    //border:solid;   //inset,outset,ridge,solid,dotted
    //border-color:red;*/
}
.signuptheme{
 border:solid;
 /*border-color:white;*/
 background-color:rgba(255,255,255,0.2)  ; 
 box-shadow: 10px 10px 10px black;
 margin-top: 70px;
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
  
    <body  bgcolor="lightblue">


                        
        <div  class="divtheme">
<%@include  file="admintop.jsp" %>

                                
<marquee  behavior="slide" scrollamount="20"   direction="up">
          
<form  action="AccountDeletejavacode.jsp">
     <table  align="center" border="0"  cellspacing="4"  cellpadding="4"   class="signuptheme">
            <tr align="center">
                <td  colspan="2">
<h1>DELETE ACCOUNT FORM</h1>
                </td>
            </tr>                                
            <tr align="center">
                <td><select  class="texttheme"  name="cat">
                    <option>SELECT CATEGORY</option>
                        <option>EMPLOYEE</option>
                        <option>CUSTOMER</option>
                        <option>SELF</option>
                    </select></td>
                </tr>
                <tr align="center">
                    <td><input type="text"  name="uId" placeholder="enter id here to delete" class="texttheme"></td>
                </tr>
            
            <tr  align="center">
                <td colspan="2"><input type="submit"  value="DELETE" class="buttontheme"></td>
            </tr>
        </table> 
        
          </form>  
    </marquee>   

        </div>
        <div>
            
        </div>
    </body>
</html>
