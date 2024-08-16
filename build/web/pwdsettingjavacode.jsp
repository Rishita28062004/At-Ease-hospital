<%@page import="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.SQLException,java.sql.Connection,java.sql.ResultSet" %>

<%
    String userID = request.getParameter("userid");
    String OPass = request.getParameter("password");
    String NPass = request.getParameter("npass");
    String CNPass = request.getParameter("cnpass");
    Class.forName("com.mysql.jdbc.Driver");//driver
  Connection con=DriverManager.getConnection(
   "jdbc:mysql://localhost:3306/mysql1","root","root");//URL
  PreparedStatement st=con.prepareStatement(
   "select * from public_sigup where userid=? and password=?");
   st.setString(1,userID);
   st.setString(2,OPass); 
   ResultSet rs=st.executeQuery();
    if(rs.next())
  {
    if(NPass.equals(CNPass))
    {
        PreparedStatement st1=con.prepareStatement("update public_sigup  set  password=?  where userid=?");
        st1.setString(1,NPass);
        st1.setString(2,userID);
        st1.executeUpdate();
        con.close();
        response.sendRedirect("PWDSETTING.jsp");
    }
    else
    {
        out.println("new password and confirm new password doesnt match");
    }
}
else
{
out.println("invalid id/old password");
}


    


    %>