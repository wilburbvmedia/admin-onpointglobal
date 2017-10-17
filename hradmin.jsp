<%@page import="java.util.*, com.util.*"%>

<%
if( session.getAttribute("hrlogin") == null )
 {
  com.util.Web.redirect( response, 302, "./login.jsp" );
  return;
}
%>
<%
com.servlets.Cache.reset();

ArrayList ra = DB.getData( "select id_application,name,email,phone,subject,message,cv,domain from applications" );
%>
<%@include  file="./header.html" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Onpoint Applications Dashboard
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li class="active">All Applicationa</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">All Applications</h3>
          </div>
          <div class="box-body">
            <table id="raTable" class="display table table-bordered table-hover dataTable" cellspacing="0" width="100%">
              <thead>
                <tr>
                  <th class="tab">ID</th>
                  <th class="tab">Name</th>
                  <th class="tab">Email</th>
                  <th class="tab">Phone</th>
                  <th class="tab">Subject</th>
                  <th class="tab">Message</th>
                  <th class="tab">Domain</th>
                  <th class="tab">Resume File Name</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th class="tab">ID</th>
                  <th class="tab">Name</th>
                  <th class="tab">Email</th>
                  <th class="tab">Phone</th>
                  <th class="tab">Subject</th>
                  <th class="tab">Message</th>
                  <th class="tab">Domain</th>
                  <th class="tab">Resumen File Name</th>
                </tr>
              </tfoot>
              <tbody>         
                <%
                for( int i=0; i<ra.size(); i++ )
                 {
                  HashMap hm      = (HashMap) ra.get(i);
                  %>
                  <tr class="tab">
                    <td class="tab"><%=hm.get("id_application").toString()%></td>
                    <td class="tab"><%=hm.get("name").toString()%></td>
                    <td class="tab"><%=hm.get("email").toString()%></td>
                    <td class="tab"><%=hm.get("phone").toString()%></td>
                    <td class="tab"><%=hm.get("subject").toString()%></td>
                    <td class="tab"><%=hm.get("message").toString()%></td>
                    <td class="tab"><%=hm.get("domain").toString()%></td>
                    <td class="tab"><%=hm.get("cv").toString()%></td>
                  </tr>
                  <%
                }
                %>
              </tbody>
            </table>
          </div>
        </div>

      </section>
      <!-- /.content -->
    </div>
  
<%@include  file="./footer.html" %>



