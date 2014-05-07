<%@page import="com.witsoft.common.ToExcel" %>
<% 
String ugid = request.getParameter("ugid");
response.reset();
response.setHeader("Content-disposition","attachment; filename=gradelist.xls" );

response.setContentType("application/vnd.ms-excel");

ToExcel.writeExcel(response.getOutputStream(),ugid); %>
