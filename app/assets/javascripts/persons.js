$(document).ready(function() {
	
	$("#search").click(function(e){
		
		$.ajax({
		  method: "POST",
		  url: "/persons/search/",
		  data: $(this).parent().serialize(),
		    success: function(r) { 
		    	$("#search_rezult").after(r);           
		    }         
		})
		  .error(function (a) {
		    //current_project_title.text(old_project_name_for_current_project);
		    alert('error');
		  });
		  e.preventDefault();
	});

});



