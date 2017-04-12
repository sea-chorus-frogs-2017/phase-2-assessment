$(document).ready(function() {
  $("#new-post-form").on("submit", function(e){
    e.preventDefault();
    var postInfo = $(this).serialize()
    $.ajax({
      url: '/posts',
      method: 'POST',
      data: postInfo,
    }).done(function(response){
      if(response.includes("<ul class='errors-list'>")){
        $(".errors").hide();
        $(".sidebar").find("form").prepend(response)
      } else {
        $(".errors").hide();
        $("#post-list").prepend("<li>" + response + "</li>");
      }
    })
  });

  $("#post-list").on("submit", function(e){
    e.preventDefault();
    console.log("WOOOOOOOOOOOOOO");
  })
})
