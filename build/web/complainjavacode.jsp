<%@page import="java.sql.DriverManager,java.sql.PreparedStatement,java.util.Date" %>
<%@page  import="java.sql.Connection"%>

<%
String fullname = request.getParameter("FName");
String contact=request.getParameter("contact");
String complain=request.getParameter("Complain");
String mailId=request.getParameter("MailID");


Class.forName("com.mysql.jdbc.Driver");//driver
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/mysql1","root","root");//URL
PreparedStatement st=con.prepareStatement(
"insert into complain(FName,contact,MailID,Complain,Status,Date) values(?,?,?,?,?,?)");
st.setString(1,fullname);
st.setString(2,contact);
st.setString(3,mailId);
st.setString(4,complain);
st.setString(5,"under process");
st.setString(6,""+new java.util.Date());
st.executeUpdate();
response.sendRedirect("COMPLAIN.jsp");
%>
