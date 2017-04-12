$(document).ready(function(){
  $('#sidebar').on("submit", "#new-post-form", function(event){
    event.preventDefault();
    var form = $(this);
    var formPath = $(this).attr('action');
    var formMethod = $(this).attr('method');
    var formData = $(this).serialize();
    var request = $.ajax({
      url: formPath,
      type: formMethod,
      data: formData
    });
    request.done(function(response){
      form.trigger('reset');
      $('.errors').remove();
      $('#post-list').prepend("<li>" + response + "</li>");
    });
    request.fail(function(response){
      $('.errors').remove();
      $('#new-post-form').before(response.responseText);
    });
  });
});
