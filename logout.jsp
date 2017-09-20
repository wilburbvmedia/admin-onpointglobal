<%@page import="java.util.*, com.util.*"%>

<%
   session.removeAttribute( "hrlogin" );
   Web.redirect( response, 302, "./login.jsp" );
%>