$(document).ready(function(){
  $("form#new-post-form").on("submit", function(event){
    event.preventDefault();
    var post = $(event.target).serialize();
    $.ajax({
      url: '/posts',
      type: 'POST',
      data: post
    }).done(function(response){
      console.log(response)
      $("form#new-post-form")[0].reset();
      $("div.new-posts").prepend(response);
    })
  })

  $("section#comments.content").on("submit", function(event){
    event.preventDefault();
    console.log(event);
  })
});
