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
	ArrayList ra = DB.getData( "select * from jobs" );
%>

<%
if( session.getAttribute("hrlogin") == null )
 {
  com.util.Web.redirect( response, 302, "./login.jsp" );
  return;
}
%>

<%@include  file="../templates/header.html" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Jobs Maintenance
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li class="active">Jobs</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">All Jobs</h3>
          </div>
          <div class="box-body">
            <h1>Jobs List</h1>
		<table id="raTable" class="display table table-bordered table-hover dataTable" cellspacing="0" width="100%">
        	<thead>
            	<tr>
                	<th class="tab">ID</th>
                	<th class="tab">Date</th>
                	<th class="tab">Job Title</th>
                	<th class="tab">Location</th>
                	<th class="tab">Domain</th>
                	<th class="tab">Job Type</th>
                	<th class="tab">Actions</th>                	
            	</tr>
        	</thead>
        	<tfoot>
            	<tr>
                	<th class="tab">ID</th>
                	<th class="tab">Date</th>
                	<th class="tab">Job Title</th>
                	<th class="tab">Location</th>
                	<th class="tab">Domain</th>
                	<th class="tab">Job Type</th>
                	<th class="tab">Actions</th>
            	</tr>
        	</tfoot>
        	<tbody>         
				<%
				   for( int i=0; i<ra.size(); i++ )
				   {
				   		HashMap hm      = (HashMap) ra.get(i);
				%>
				<tr class="tab">
					<td class="tab"><%=hm.get("id_job").toString()%></td>
					<td class="tab"><%=hm.get("date").toString()%></td>
					<td class="tab"><%=hm.get("job_title").toString()%></td>
					<td class="tab"><%=hm.get("location").toString()%></td>
					<td class="tab"><%=hm.get("domain").toString()%></td>
					<td class="tab"><%=hm.get("job_type").toString()%></td>
					<td class="tab">
						<div class="btn-group">
							<a class="btn btn-warning" onClick="ajax_job('getedit',<%=hm.get("id_job").toString()%>)">
								<i class="fa fa-fw fa-edit"></i>
							</a>
							<a class="btn btn-danger" onClick="ajax_job('delete',<%=hm.get("id_job").toString()%>)">
								<i class="fa fa-fw fa-trash-o"></i>
							</a>
						</div>
					</td>
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
    
    <%@include  file="../templates/footer.html" %>