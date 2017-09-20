<%@page import="java.util.*, com.util.*"%>


<%@include  file="../templates/header.html" %>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Onpoint Applications Dashboard
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Applications</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">Add Job</h3>
			</div>
			<div class="box-body">
				<form role="form" method="post" action="javascript:ajax_job('add',0)">
					<div class="box-bodydfsdf">
						<div class="form-group">
							<label for="job_title">Job Title</label>
							<input type="text" class="form-control" id="job_title" name="job_title" placeholder="Enter Title" data-validation="required">
						</div>
						<div class="form-group">
							<label for="job_date">Date</label>
							<input type="text" class="form-control" id="job_date" name="job_date" placeholder="Enter Date" data-validation="required">
						</div>
						<div class="form-group">
							<label for="job_location">Location</label>
							<input type="text" class="form-control" id="job_location" name="job_location" placeholder="Enter Location" data-validation="required">
						</div>	
						<div class="form-group">
							<label for="job_type">Job Type</label>
							<input type="text" class="form-control" id="job_type" name="job_type" placeholder="Enter Type" data-validation="required">
						</div>				
						<div class="form-group">
							<label for="job_description">Job Description</label>
							<textarea data-validation="required" id="job_description" name="job_description" class="form-control" rows="3" placeholder="Enter ..."></textarea>
						</div>
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<div class="form-group">
							<button class="btn">
								Add Job
							</button>
						</div>
					</div>
				</form>

			</div>
		</div>

	</section>
	<!-- /.content -->
</div>



<script src="//cdn.ckeditor.com/4.7.3/basic/ckeditor.js"></script>
<script>
	CKEDITOR.replace( 'job_description' );
</script>


<%@include  file="../templates/footer.html" %>