$(document).ready(function() {
	
	$("#search").submit(function(e){
		
		$.ajax({
		  method: "POST",
		  url: $(this).attr('action'),
		  data: $(this).serialize(),
		    success: function(r) {
		    	$("#search_rezult").children().remove();
		    	$("#search_rezult").append(r);           
		    }         
		})
		  .error(function (a) {
		    //current_project_title.text(old_project_name_for_current_project);
		    alert('error');
		  });
		  e.preventDefault();
	});


	$("#new_family").submit(function(e){
		var f_name = $(this).find("#name").val();
		$.ajax({
		  method: "POST",
		  url: $(this).attr('action'),
		  data: {family: {name: f_name}},
		    success: function(r) {
		    	alert(r);        
		    }         
		})
		  .error(function (a) {
		    //current_project_title.text(old_project_name_for_current_project);
		    alert('error');
		  });
		  e.preventDefault();
	});

});