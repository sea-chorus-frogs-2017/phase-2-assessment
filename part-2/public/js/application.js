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
    console.log(event)
    console.log(event.target)
    var fullUrl = event.target.action;
    var postUrl = fullUrl.substring(fullUrl.indexOf('/posts/') +1 );
    var findId = /\d/;
    var postId = postUrl.match(findId)[0]
    $.ajax({
      url: postUrl,
      type: 'PUT',
      data: postId
    }).done(function(response){
      var pointSpan = $(event.target).siblings('.post-details').children()
      console.log(response.points)
      $(pointSpan[1]).text(response.points + ' likes')
    })
  })
});
