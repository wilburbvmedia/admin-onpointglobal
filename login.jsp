<%
   com.servlets.Cache.reset();
   if( session.getAttribute("hrlogin")!=null )
   {
      com.util.Web.redirect( response, 302, "./hradmin.jsp" );
      return;
   }

   if( request.getMethod().equals("POST") )
   {
      String username = request.getParameter( "username" );
      String password = request.getParameter( "password" );
      if( username.equals("admin") && password.equals("onpointadmin") )
      {
         session.setAttribute( "hrlogin", "Y" );
         session.setMaxInactiveInterval( 3600 );
         com.util.Web.redirect( response, 302, "./hradmin.jsp" );
      }
   }
%>
<DOCTYPE html>
   <html>
   <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/login.css">
 </head>
 <body onLoad="document.frm.username.focus();">

   <div class="container text-center">
      <img src="./assets/img/logo.png" alt="OnPoint Logo" class="mb-1">
      <div class="box">
         <form method="post" name="frm">
          <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" name="username" placeholder="Username" class="form-control">
         </div>
         <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="password" class="form-control">
         </div>

         <div class="row">
            <div class="col-md-6 col-md-offset-3">
               <input type="submit" class="btn btn-primary is-fullwidth login-button" value="Login">
            </div>
         </div>
      </form>
   </div>
</div>

</body>
</html>
