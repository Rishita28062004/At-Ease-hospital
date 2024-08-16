<html>
    <style> 
        .divtheme{
            background-image:url('media\doclady.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            width:100%;
            height:700px;
        }
        .tabletheme{
            width:100%;
            height: 70px;
            /*font-weight: bold;
            //background-color:#B8860B;*/
            background-color:rgba(30,144,255,0.5);
            color:black;
            text-align: center;
            font-size: 16px;
            font-family: arial;
        }
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
    height: 30px;
    /*border-radius: 20px;
    //background-color:lightblue;
    //border:solid;   //inset,outset,ridge,solid,dotted
    border-color:red;*/
}
.textareatheme{
        width:600px;
    height: 100px;
}
.signuptheme{
/* border:solid; 
 border-color:white;'*/
 background-color:rgba(255,255,255,0.2)  ; 
}
.buttontheme{
    width:100px;
height: 40px;
background-color:black;
color:white;
font-size: 20px;
border-radius: 130px;
/*background-image:url('media/images (26).jpeg')*/
}
    </style>
  
    <body bgcolor="lightblue">


                        
        <div  class="divtheme">
           <%@include  file="sitetop.jsp" %>
                         
<!--        <table  align="right" border="0"  cellspacing="10"  cellpadding="10"  style="margin-top:0px;box-shadow:10px 10px 10px black ;margin-right:100px;margin-top:-600px"> -->
        <table  align="left" border="0"  cellspacing="10"  cellpadding="10"   class="signuptheme">
            <tr align="center">
                <td  colspan="4">
<iframe width="100%" height="300" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=new%20palasia%20indore+(technosoft%20informatics)&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe> 
                </td>
            </tr>                                
            <tr>
                <td>Full Name</td>
                <td><input type="text" placeholder="Enter full name here" class="texttheme"></td>
                <td>Contact</td>
                <td><input type="number" placeholder="Enter contact here"  class="texttheme"></td>
                
            </tr>
            
                 <tr>
                <td>Purpose</td>
                <td colspan="3"><textarea  class="textareatheme"></textarea></td>
            </tr>
             <tr>
                <td>Country</td>
                        <td><select class="texttheme">
                    <option>select country</option>
                    <option>bharat</option>
                    <option>pakistan</option>
                    <option>srilanka</option>
                    </select></td>
                                <td>Mail id</td>
                <td><input type="email" class="texttheme"></td>
    
            </tr>
            
            <tr  align="center">
                <td colspan="4"><input type="submit"  value="submit" class="buttontheme"></td>
            </tr>
        </table>
            
        </div>
        <div>
            
        </div>
    </body>
</html>






