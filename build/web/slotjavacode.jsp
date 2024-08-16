<%@page import ="java.sql.DriverManager,java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection"%>
<% 
    String fullname = request.getParameter("fullName");
    String category = request.getParameter("categories");
    String price = request.getParameter("price");
           Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql1","root","root");
            PreparedStatement st = con.prepareStatement("insert into slot(fullName,categories,price,Status) values(?,?,?,?)" );
            st.setString(1,fullname);
            st.setString(2,category);
            st.setString(3,price);
            st.setString(4,"under process");
                st.executeUpdate(); 
          response.sendRedirect("SLOT.jsp");
%> 