<%@include file="SecurityGuard.jsp"%>


<html> 
    <style> 
        .divtheme{
            background-image:url('media/lockk.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            width:100%;
            height:500px;
        }
        /*.tabletheme{
            width:100%;
            height: 70px;
           /* //font-weight: bold;
            //background-color:#B8860B;
            background-color:rgba(30,144,255,0.5);
            color:black;
            text-align: center;
            font-size: 16px;
            font-family: arial;
        }*/
      .tdtheme:hover{
            background-color:darkblue;
            color:white;
      }

  a{
    color:white;
    text-decoration: none;
    font-size:18px;
    }
.texttheme{
    width:250px;
    height: 30px;
    border-radius: 20px;
    font-weight:bold;
    /*//background-color:lightblue;
    //border:solid;   //inset,outset,ridge,solid,dotted
    //border-color:red;*/
}
.textareatheme{
        width:250px;
       height: 50px;
         border-radius: 20px;
}
.signuptheme{
 border:solid; 
 border-color:white;
 background-color:rgba(13,180,185,0.4);
 margin-top:50px; 
 height:300px;
 width:700px;
}
.buttontheme{
width:100px;
height: 40px;
background-color:black;
color:white;
font-size: 20px;
border-radius: 130px;
text-align: center;

}
    </style>
  
    <body  bgcolor="black">
     
                        
        <div  class="divtheme">
<%@include  file="usertop.jsp"%>
<form  action="updatepersonalInfojavacode.jsp">
<%@page import ="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection,java.sql.ResultSet,java.util.ArrayList"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql1","root","root");
            PreparedStatement st = con.prepareStatement("select * from public_sigup where userid=?");
            st.setString(1,userID);
            ResultSet rs=st.executeQuery();
            String fullname ="";
            String address = "";
            String country ="";
            String gender ="";
            String contact ="";
            String mailId = "";
            String dob = "";
            if (rs.next())
            {
              fullname=rs.getString(2);
              address=rs.getString(4);
              country=rs.getString(5);
              gender=rs.getString(6);
              contact=rs.getString(7);
              mailId=rs.getString(8);
              dob=rs.getString(9);
            }
            
%>
                         
        


<table  align="center" border="0"  cellspacing="10"  cellpadding="10"   class="signuptheme">
             <tr>
                <td>User Id</td>
                <td><input type="text" name="userid" value="<%=userID%>" placeholder="Enter id here"  class="texttheme"></td>
                <td>Full Name</td>
                <td><input type="text" name="fullname" value="<%=fullname%>"  placeholder="Enter full name here" class="texttheme"></td>
            </tr>
            
            <tr>
         
                <td>Address</td>
                <td><input type="text" name="address" value="<%=address%>"  class="textareatheme"></td>
            </tr>
             <tr>
                <td>Country</td>
                <td><input type="text" name="country" class="texttheme" value="<%=country%>">
                    </td>
                <td>Gender</td>
                <td><input type="text" name="gender" class="texttheme" value="<%=gender%>">
                    </td>
                        
            </tr>   
            <tr>
                <td>Contact</td>
                <td><input type="number" value="<%=contact%>" class="texttheme"  name="contact" ></td>
                <td>Mail id</td>
                <td><input type="email" class="texttheme"  name="mailid" value="<%=mailId%>"></td>
            </tr>
            <tr>
                <td>DOB</td>
                <td><input type="date" class="texttheme"  name="dob" value="<%=dob%>"></td>
            </tr>
            <tr  align="center">
                <td colspan="4"><input type="submit"  value="Update" class="buttontheme"></td>
            </tr>
        </table>
          
  

                     </form> 

        </div>
        
        <div>
            
        </div>
           
    </body>
</html>