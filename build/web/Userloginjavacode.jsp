<%@page import="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page  import="java.sql.Connection,java.sql.ResultSet"%>

<%
    
   String userID =request.getParameter("userid");
String pass=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql1","root","root");
       PreparedStatement st = con.prepareStatement("Select * from public_sigup where userid=? and password=?");
       st.setString(1,userID);   
       st.setString(2,pass); 
       ResultSet rs = st.executeQuery();
       if(rs.next())
{ 
     Cookie ck = new Cookie("At_Ease1",userID); 
     ck.setMaxAge(10000);
     response.addCookie(ck);
     
    session.setAttribute("CALL",userID);
    response.sendRedirect("Userdashboard.jsp");
} 
else
{
   
    response.sendRedirect("HOME.jsp");
}

%> 
