function ajax_job(a,x) {
	if (a == 'add') {
		var job_title = $('#job_title').val();
		var job_date = $('#job_date').val();
		var job_location = $('#job_location').val();
		var job_type = $('#job_type').val();
		var job_description = $('#job_description').val();

		$.ajax({//Comunicación jQuery hacia JSP
			type : "POST",
			url : "../job_ajax_add.jsp",
			data : {
				'job_title' : job_title,
				'job_date' : job_date,
				'job_location' : job_location,
				'job_type' : job_type,
				'job_description' : job_description
			},
			success : function(msg) {
				//alert(msg);
				alert("Job Added Successfully.");
			},
			error : function(xml, msg) {
				//alert(msg);
				alert("An Error Occurred. Please Try Again Later!");
			}
		});
	}
	
	if (a == 'delete') {
		var job_title = $('#job_title').val();
		var job_date = $('#job_date').val();
		var job_location = $('#job_location').val();
		var job_type = $('#job_type').val();
		var job_description = $('#job_description').val();

		$.ajax({//Comunicación jQuery hacia JSP
			type : "POST",
			url : "../job_ajax_add.jsp",
			data : {
				'job_title' : job_title,
				'job_date' : job_date,
				'job_location' : job_location,
				'job_type' : job_type,
				'job_description' : job_description
			},
			success : function(msg) {
				//alert(msg);
				alert("Job Added Successfully.");
			},
			error : function(xml, msg) {
				//alert(msg);
				alert("An Error Occurred. Please Try Again Later!");
			}
		});
	}
};


$(document).ready(function() {

	oTable = $('#raTable').DataTable({
		"iDisplayLength" : 25
	});


	$("#logoutButton").click(function () {
		$("#logoutForm").submit();
	});

}); 