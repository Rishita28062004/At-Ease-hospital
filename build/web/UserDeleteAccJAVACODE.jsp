<%@page import ="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection"%>
<% 
    
   String userId = request.getParameter("userid");
   String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql1","root","root");
            PreparedStatement st = con.prepareStatement("delete from public_sigup where userid = ?" );
     st.setString(1,userId);
     st.executeUpdate();
      response.sendRedirect("HOME.jsp");
     
%>