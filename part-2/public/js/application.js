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
      $('#post-list').prepend(response);
    });
  });

  $('#post-list').on('submit','.new-post-like-form', function(event){
    event.preventDefault();
    var that = this;
    var formAction = $(this).attr('action')
    var request = $.ajax({
      url: formAction,
      method: 'PUT',
    });
    request.done(function(response){
      $(that).parent().html(response);
    });
  });

});
