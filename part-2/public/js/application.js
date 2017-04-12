$( document ).ready(function() {
  $('#new-post-form').on("submit", function(event){
    event.preventDefault();
    var newPostInfo = $(this).serialize();
    $.ajax({
      url: '/posts',
      type: 'POST',
      data: newPostInfo
    }).done(function(response){
      $('#post-list').prepend(response);
      $('#new-post-form').trigger("reset");
    })
  })
});
