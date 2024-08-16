

<%@page import="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.SQLException,java.sql.Connection,java.sql.ResultSet" %>

<% 
    String userID = request.getParameter("userid"); 
    String Fullname = request.getParameter("fullname");
    String Address = request.getParameter("address");
    String Country = request.getParameter("country");
    String Gender = request.getParameter("gender");
    String Contact = request.getParameter("contact");
    String Mailid = request.getParameter("mailid");
    Class.forName("com.mysql.jdbc.Driver");//driver
  Connection con=DriverManager.getConnection(
   "jdbc:mysql://localhost:3306/mysql1","root","root");//URL
  PreparedStatement st=con.prepareStatement(
   "update public_sigup  set fullname=?,address=?,country=?,gender=?,contact=?,mailid=? where userid=?");
   
   st.setString(1,Fullname);
   st.setString(2,Address); 
   st.setString(3,Country); 
   st.setString(4,Gender);
   st.setString(5,Contact);
   st.setString(6,Mailid);
   st.setString(7,userID);
   st.executeUpdate(); 
  response.sendRedirect("USERSETTING.jsp");
%>