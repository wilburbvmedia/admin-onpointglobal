function ajax_job(a, x) {
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
				window.location.href = "./list.jsp";
			},
			error : function(xml, msg) {
				//alert(msg);
				alert("An Error Occurred. Please Try Again Later!");
			}
		});
	}

	if (a == 'edit') {
		var job_title = $('#job_title').val();
		var job_date = $('#job_date').val();
		var job_location = $('#job_location').val();
		var job_type = $('#job_type').val();
		var job_description = $('#job_description').val();

		$.ajax({//Comunicación jQuery hacia JSP
			type : "POST",
			url : "../job_ajax_edit.jsp",
			data : {
				'job_id' : x,
				'job_title' : job_title,
				'job_date' : job_date,
				'job_location' : job_location,
				'job_type' : job_type,
				'job_description' : job_description
			},
			success : function(msg) {
				//alert(msg);
				alert("Job Edit Successfully.");
				window.location.href = "./list.jsp";
			},
			error : function(xml, msg) {
				//alert(msg);
				alert("An Error Occurred. Please Try Again Later!");
			}
		});
	}

	if (a == 'delete') {

		$.ajax({//Comunicación jQuery hacia JSP
			type : "POST",
			url : "../job_ajax_delete.jsp",
			data : {
				'id_job' : x
			},
			success : function(msg) {
				//alert(msg);
				alert("Job Delete Successfully.");
				location.reload();
			},
			error : function(xml, msg) {
				//alert(msg);
				alert("An Error Occurred. Please Try Again Later!");
			}
		});
	}
	if (a == 'getedit') {
		window.location.href = "./edit.jsp?j=" + x;
	}
};

$(document).ready(function() {

	oTable = $('#raTable').DataTable({
		"iDisplayLength" : 25
	});

	$("#logoutButton").click(function() {
		$("#logoutForm").submit();
	});

});
