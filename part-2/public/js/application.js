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
      $("#post-list").prepend(response);
    })
  })

  $("#post-list").on("click", ".input.submit", function(event){
    event.preventDefault();
    var currentPost = $(this.closest('li')).children().children()[1];
    var path = event.target.form.action
    $.ajax({
      url: path,
      type: 'PUT'
    }).done(function(response){
      $(currentPost).html(response)
    })
  })

  // $("article.post").on("submit", function(event){
  //   event.preventDefault();
  //   var currentPost = $(event.currentTarget).children('div.post-details');
  //   var path = event.target.action
  //   // debugger
    // $.ajax({
    //   url: path,
    //   type: 'PUT'
    // }).done(function(response){
    //   currentPost.html(response)
    //   console.log(response);
    // })
  // })
});
