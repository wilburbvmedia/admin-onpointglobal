<%@page import="java.util.*, com.util.*, org.json.*"%>

<%
try 
{
	com.servlets.Cache.reset();
	response.setContentType("application/json");
   	response.setHeader("Content-Disposition", "inline");
	ArrayList ra = DB.getData( "select * from jobs" );

	JSONArray json = new JSONArray();

	for	 (int i = 0; i < ra.size(); i++) {
		json.put(ra.get(i));
	}
	out.print(json);
	
} catch (Exception e)
{
	out.print("Error here");
}
%>