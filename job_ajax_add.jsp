<%@page import="java.util.*, com.util.*"%>
<%
   String message;
   String sql;
   
   try{
        sql = "INSERT INTO jobs (date,job_title,location,job_type,description) values ('" + 
                request.getParameter("job_date").toString() + "','" +
                request.getParameter("job_title").toString() + "','" +
                request.getParameter("job_location").toString() + "','" +
                request.getParameter("job_type").toString() + "','" +
                request.getParameter("job_description").toString() + "')";
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