<% 
response.addHeader("Pragma","no-Cache");
response.addHeader("Cache-Control","no-Store");
response.setHeader("Pragma","no-Cache");
response.setHeader("Cache-Control","no-Store");

 String userID=(String)session.getAttribute("CALL");
 if(userID==null)
 {
  response.sendRedirect("HOME.jsp");
}
if(session==null)
{
response.sendRedirect("HOME.jsp");
}
%>