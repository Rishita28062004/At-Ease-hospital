
<!DOCTYPE html>
<html>
    <style>
        .divtheme{
            background-image: url('media/doclady.jpg');
            background-repeat:no-repeat;
            background-size: 100%;
            width: 100%;
            height: 400px;
          /*  margin-left:10%;
            margin-top: 80px;
            box-shadow: 5px 10px 10px black;*/
        }
        .texttheme{
            width:200px;
            height: 30px;
           
    /*border-radius: 20px;
    background-color:lightblue;
    border:solid;   inset,outset,ridge,solid,dotted
    border-color:red;*/
        }
       
        /*a {
            color:white;
            text-decoration:none;
            font-size: 18px;
       }*/
       
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
           border-radius:20px;
           border:solid;
       }
        </style>
        <body> 
                     
            <div class="divtheme">
               
              
              <form action ="authloginjavacode.jsp">
              <table  align="left" cellspacing="5"  cellpadding="5" class="tabletheme">
            <tr align="center">
                <td  colspan="2">
                   <img src="media/authorized.jpg" height="60px" width="60px" style="margin-right:50px" >   
                </td> 
            </tr>                            
            <tr>
                <td align="center">Id:</td>
                <td><input type="text" placeholder="Enter id here" name="id" class="texttheme"></td>
            </tr>
            <tr>
                <td align="center">Password:</td>
                <td><input type="text" placeholder="Enter the password" name="password" class="texttheme"></td>
            </tr>
            <tr>
                    <td align="center" colspan="2">
                        <select  class="texttheme"  name="post">
                            <option>SELECT POST</option>
                            <option>admin</option>
                            <option>operator</option>
                        </select>
                    </td>
                </tr>  
            <tr>
                <td align="center" colspan="2">
                   <input type="submit" value="LOGIN" class="buttontheme">
                </td> 
            </tr>
            </table>
            </form>
            </div>
               
             <div>
                   
             </div>
      </body>
</html> 
       