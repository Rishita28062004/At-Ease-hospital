<%@page import ="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection"%>
<% 
    String userid = request.getParameter("userid");
    String fullname = request.getParameter("fullname");
    String password = request.getParameter("password");
    String address = request.getParameter("address");
    String country = request.getParameter("country");
    String gender = request.getParameter("gender");
    String contact = request.getParameter("contact");
    String mailId = request.getParameter("mailId");
    String dob = request.getParameter("dob");
    
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql1","root","root");
            PreparedStatement st = con.prepareStatement("insert into public_sigup values (?,?,?,?,?,?,?,?,?)" );
            st.setString(1,userid);
            st.setString(2,fullname);
            st.setString(3,password);
            st.setString(4,address);
            st.setString(5,country);
            st.setString(6,gender);
            st.setString(7,contact);
            st.setString(8,mailId);
            st.setString(9,dob);
            st.executeUpdate(); 
          response.sendRedirect("ACCOUNT.jsp");
%> 