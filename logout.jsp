<%@page import="java.util.*, com.util.*"%>

<%
	com.servlets.Cache.reset();
   session.removeAttribute( "hrlogin" );
   Web.redirect( response, 302, "./login.jsp" );
%>