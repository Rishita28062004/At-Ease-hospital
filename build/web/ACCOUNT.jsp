


<!DOCTYPE html>
<html>
    <style>
        .divtheme{
            background-image: url('media/stethoscope.jpg');
            background-repeat:no-repeat;
            background-size: 100%;
            width: 100%;
            height: 600px;
          /*  margin-left:10%;
            margin-top: 80px;
            box-shadow: 5px 10px 10px black;*/
        }
        .tabtheme{
            height:50px;
            width: 100%; 
             text-align: center;
             font-size:16px;
             font-family: arial;
             font-weight: bold;
           background-color:rgba(35,125,175,0.2);
                color:white;
        }
       .tdtheme:hover
        {
            background-color: lightskyblue;
            color:white;
        } 
        .buttontheme{
        width:100px;
        height: 40px;
        background-color:black;
        color:white;
        font-size: 20px;
        }
        a 
        {
            color:white;
            text-decoration:none;
            font-size: 18px;
        }
       

        </style>
         <body bgcolor="lightblue" > 
           
            <div class="divtheme">
                  <%@include  file="sitetop.jsp" %>
                  
            <!--<img src="media/stethoscope.jpg" 
            height="500px" width="700px"  style="margin-top:100px">    -->                            
         <form action ="Accountjavacode.jsp">                     
        <table  align="left" border="0"  cellspacing="5"  cellpadding="5" >
           <tr align="center">
                <td  colspan="2">
                   <img src="media/key.png" height="50px" width="50px"  style="margin-left:50px" >   
                </td
            </tr>                            
            <tr>
                <td>User Id</td>
                <td><input type="text" placeholder="Enter id here" name="userid"></td>
            </tr>
            
            <tr>
                <td>Full Name</td>
                <td><input type="text" placeholder="Enter full name here" name="fullname"></td>
            </tr>
            
                 <tr>
                <td>Password</td>
                <td><input type="password" placeholder="Enter password here" name="password"></td>
            </tr>
            
            <tr>
                <td>Address</td>
                <td><input type = "address" placeholder="Enter Address" name="address"></td>
            </tr>
             <tr>
                <td>Country</td>
                        <td><select name="country">
                    <option>select country</option>
                    <option>UK</option>
                    <option>pakistan</option>
                    <option>USA</option>
                    <option>India</option>
                    <option>Canada</option>
                    </select></td>
            </tr>
            
             <tr>
                <td>Gender</td>
                        <td><select name="gender">
                    <option>select gender</option>
                    <option>female</option>
                    <option>male</option>
                    <option>other</option>
                    </select></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="number" name="contact" ></td>
            </tr>
            <tr>
                <td>Mail id</td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td>DOB</td>
                <td><input type="date" name="dob"></td>
            </tr>
            <tr  align="center">
                <td colspan="2"><input type="submit"  value="submit" class="buttontheme"></td>
            </tr>
        </table>
         </form>
            
        </div>
        <div>
            
        </div>
           
       </body>
</html>

