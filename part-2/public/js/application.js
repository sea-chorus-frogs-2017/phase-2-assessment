$(document).ready(function(){
  $("form#new-post-form").on("submit", function(event){
    event.preventDefault();
    var post = $(event.target).serialize();
    $.ajax({
      url: '/posts',
      type: 'POST',
      data: post
    }).done(function(response){
      $("form#new-post-form")[0].reset();
      $("article.post").prepend(response);
    })
  })

  $("article.post").on("submit", function(event){
    event.preventDefault();
    // debugger
    var currentPost = $(event.currentTarget).children('div.post-details');
    var path = event.target.action
    $.ajax({
      url: path,
      type: 'PUT'
    }).done(function(response){
      // currentPost.html(response)
      console.log(response);
    })
  })
});
