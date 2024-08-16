
<html>
    <style> 
        .divtheme{
            background-image:url('media/blue telephone.jpg');
            background-size:100%;
            background-repeat:no-repeat;
            width:100%;
            height: 700px;
        }
        .tabletheme{
            height: 30px;
            /*font-weight: bold;
            //background-color:#B8860B;*/
            background-color:rgba(30,144,255,0.5);
            color:black;
            text-align: center;
            font-size: 16px;
            font-family: arial;
            /*align:center;*/
        }
     .tdtheme:hover{
            background-color:orange;
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
    /*//border-radius: 20px;
    //background-color:lightblue;
    //border:solid;   //inset,outset,ridge,solid,dotted
    //border-color:red;*/
}

    </style>
<%@page import="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection,java.sql.ResultSet,java.util.ArrayList"%>
    <body  bgcolor="lightblue"> 
<%
Class.forName("com.mysql.jdbc.Driver");//driver
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/mysql1","root","root");//URL
PreparedStatement st=con.prepareStatement("select * from feedback");
ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
while(rs.next())
{
list1.add(rs.getString(1));
list2.add(rs.getString(2));
}
%>
        
                        
        <div  class="divtheme">
<%@include  file="operatortop.jsp" %>
<br>
                <hr>
                <table width="80%"  class="tabletheme" align='center'>
                    <tr align="center"  bgcolor="white">
                        
                        <td>FULL NAME</td>
                        <td>FEEDBACK</td>
                       
                    </tr>
                    <%
                        for(int i=0;i<list1.size();i++)
                        {
                    %> 
                    <tr>
                        <td><%=list1.get(i)%></td>
                         <td><%=list2.get(i)%></td>
                       
                    </tr>
                    <% } %>
                </table>

        </div>
        <div>
            
        </div>
    </body>
</html>
                      