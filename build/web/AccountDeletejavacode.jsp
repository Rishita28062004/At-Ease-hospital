<%@page import="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection,java.sql.ResultSet"%> 

<%
String  userId=request.getParameter("uId");
String category=request.getParameter("cat");
Class.forName("com.mysql.jdbc.Driver");//driver
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/mysql1","root","root");//URL 

if(category.equalsIgnoreCase("CUSTOMER"))
{
PreparedStatement st=con.prepareStatement(
"select * from public_sigup where userid=?");
st.setString(1,userId);
ResultSet rs=st.executeQuery();
if(rs.next())   
{
        PreparedStatement st1=con.prepareStatement(
                "delete from public_sigup where userid=? ");
        st1.setString(1,userId);
        st1.executeUpdate();
        con.close();
        response.sendRedirect("ACCOUNTDELETE.jsp");
    }
    else
    {
        out.println("invalid id");
    }
}
if(category.equalsIgnoreCase("EMPLOYEE"))
{ 
PreparedStatement st=con.prepareStatement(
"select * from employee_login where EmpID=?");
st.setString(1,userId);
ResultSet rs=st.executeQuery();
if(rs.next())
{
        PreparedStatement st1=con.prepareStatement(
                "delete from employee_login where EmpID =? ");
        st1.setString(1,userId);
        st1.executeUpdate();
        con.close();
        response.sendRedirect("ACCOUNTDELETE.jsp");
    }
    else
    {
        out.println("invalid id");
    }
}
if(category.equalsIgnoreCase("SELF"))
{
PreparedStatement st=con.prepareStatement(
"select * from admin_login where AdminId=?");
st.setString(1,userId);
ResultSet rs=st.executeQuery();
if(rs.next())
{
        PreparedStatement st1=con.prepareStatement(
                "delete from admin_login where AdminId=?");
        st1.setString(1,userId);
        st1.executeUpdate();
        con.close();
        response.sendRedirect("HOME.jsp");
    }
    else
    {
        out.println("invalid id");
    }
}
%>

