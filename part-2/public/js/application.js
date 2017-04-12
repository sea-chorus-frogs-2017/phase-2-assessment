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
    });
  });
  $('#post-list').on("submit", function(event){
    event.preventDefault();
    var fullUrl = event.target.action;
    var postUrl = fullUrl.substring(fullUrl.indexOf('/posts/') +1 );
    console.log(postUrl)
    var findId = /\d{2}/;
    var postId = postUrl.match(findId)[0]
    console.log(postId)
    $.ajax({
      url: postUrl,
      type: 'PUT',
      data: postUrl
    }).done(function(response){
      console.log(response)
    })
    debugger
  })

});
