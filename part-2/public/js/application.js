$(document).ready(function(){

  $('#new-post-form').on("submit", function(event){
    event.preventDefault();
    var formData = $(this).serialize();
    var request = $.ajax({
      url: '/posts',
      method: 'POST',
      data: formData
    });
    request.done(function(response){
      // console.log(response);
      $('#post-list').prepend(response);
    });
  });


});
