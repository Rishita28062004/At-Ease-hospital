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
PreparedStatement st=con.prepareStatement("select * from slot");
ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
while(rs.next())
{
list1.add(rs.getString(1));
list2.add(rs.getString(2));
list3.add(rs.getString(3));
list4.add(rs.getString(4));
list5.add(rs.getString(5));
}
%>
        
                        
        <div  class="divtheme">
<%@include  file="operatortop.jsp" %>
<br>
                <hr>
                <table width="80%"  class="tabletheme" align='center'>
                    <tr align="center"  bgcolor="white">
                        <td>SLOT NO.</td>
                        <td>FULL NAME</td>
                        <td>CATEGORIES</td>
                        <td>PRICE</td>
                        <td>STATUS</td>
                    </tr>
                    <%
                        for(int i=0;i<list1.size();i++)
                        {
                    %>
                    <tr>
                        <td><%=list1.get(i)%></td>
                         <td><%=list2.get(i)%></td>
                        <td><%=list3.get(i)%></td>
                        <td><%=list4.get(i)%></td>
                        <td><%=list5.get(i)%></td>
                    </tr>
                    <% } %>
                </table>

        </div>
        <div>
            
        </div>
    </body>
</html> 
                      