<%@page import="java.util.*, com.util.*"%>
<%
   String message;
   String sql;
   
   try{
        sql = "INSERT INTO applications (name,email,phone,subject,message,cv) values ('" + 
                request.getParameter("name").toString() + "','" +
                request.getParameter("email").toString() + "','" +
                request.getParameter("phone").toString() + "','" +
                request.getParameter("subject").toString() + "','" +
                request.getParameter("message").toString() + "','" +
                request.getParameter("resume").toString() + "')";
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