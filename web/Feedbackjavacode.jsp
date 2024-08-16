<%@page import ="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection"%>
<% 
    
    String fullname = request.getParameter("Name");
    String feedback = request.getParameter("feedback");
  
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql1","root","root");
            PreparedStatement st = con.prepareStatement("insert into feedback values(?,?)" );
            st.setString(1,fullname);
            st.setString(2,feedback);
            st.executeUpdate(); 
          response.sendRedirect("FEEDBACK.jsp");
%> 