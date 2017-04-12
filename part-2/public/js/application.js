$(document).ready(function() {
  $("#new-post-form").on("submit", function(e){
    e.preventDefault();
    var postInfo = $(this).serialize()
    $.ajax({
      url: '/posts',
      method: 'POST',
      data: postInfo,
    }).done(function(response){
      $("#post-list").prepend("<li>" + response + "</li>");
    })
  });
})
