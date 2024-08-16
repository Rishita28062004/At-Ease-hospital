<%@page import="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection,java.sql.ResultSet"%>

<%
    Class.forName("com.mysql.jdbc.Driver");//driver
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/mysql1","root","root");//URL

String  abc=request.getParameter("id");
String xyz=request.getParameter("password");
String post=request.getParameter("post");

if(post.equalsIgnoreCase("admin"))
{
PreparedStatement st=con.prepareStatement(
"select * from admin_login where AdminId=? and password=?");
st.setString(1,abc);
st.setString(2,xyz);
ResultSet rs = st.executeQuery();
if(rs.next())
{
    response.sendRedirect("admindashboard.jsp");
}

else
{
    response.sendRedirect("auth.jsp");
}
}

if(post.equalsIgnoreCase("operator"))
{
PreparedStatement st=con.prepareStatement(
"select * from employee_login where EmpID=? and password=?");
st.setString(1,abc);
st.setString(2,xyz);
ResultSet rs=st.executeQuery();
if(rs.next())
{
    response.sendRedirect("operatordashboard.jsp");
}
else
{
    response.sendRedirect("auth.jsp");
}
}

%> 