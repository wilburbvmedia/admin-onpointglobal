<%@page import="java.util.*, com.util.*"%>
<%
   String message;
   String sql;
   
   try{
        sql = "DELETE FROM jobs WHERE id_job =" + request.getParameter("id_job").toString() + ";";
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