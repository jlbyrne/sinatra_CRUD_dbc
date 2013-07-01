$(document).ready(function() {

  $('form#delete_note').on('submit', function(e){
  	e.preventDefault();

  	var sure = window.confirm("Are you sure you want to delete your note?");
  	
  	if (sure === true) { 
  		$.ajax({
  			url: '/delete', 
  			type: 'post',
  			data: $(this).serialize()
  		}).done(function(response){ 
  			window.location.replace('/'); 
  		});
  	};
  });
});
