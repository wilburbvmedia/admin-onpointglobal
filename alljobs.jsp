<%@page import="java.util.*, com.util.*"%>

<%
  ArrayList ra = DB.getData( "select id_application,name,email,phone,subject,message,cv from jobs" );
	out.print(ra);
%>