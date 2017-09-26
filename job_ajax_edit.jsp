<%@page import="java.util.*, com.util.*"%>
<%
   String message;
   String sql;
   
   try{
        sql = "UPDATE jobs SET date = '" + request.getParameter("job_date").toString() + "'," + "job_title = '" + request.getParameter("job_title").toString() + "'," + "location = '" + request.getParameter("job_location").toString() + "'," + "domain = '" + request.getParameter("job_domain").toString() + "'," + "job_type = '" + request.getParameter("job_type").toString() + "'," + "description = '" + request.getParameter("job_description").toString() + "' " + "WHERE id_job = " + request.getParameter("job_id").toString() + ";";
        DB.executeSQL(sql);         
        message  =  sql;
   }
   catch( Exception e )
   {
      message  =  "An error has occurred";
      e.printStackTrace();
   }
   
    out.print(message);
%>