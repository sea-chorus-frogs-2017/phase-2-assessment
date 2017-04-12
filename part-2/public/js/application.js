$(document).ready(function() {
  $('form#new-post-form').on("submit", function(event) {
    event.preventDefault();
    newPost = $(event.target).serialize()
    $.ajax({
      url: '/posts',
      type: 'POST',
      data: newPost
    }).done(function(response){
      newArticle = '<li>' + response + '</li>'
      $('ul#post-list').prepend(newArticle);
      $('form#new-post-form').trigger("reset");
    })
  })

  $('#post-list').on("submit", function(event){
    event.preventDefault();
    article = $(event.target)
    $.ajax({
      url: $(event.target).attr('action'),
      type: 'PUT',
      // data:
    }).done(function(response){
      var jsonResponse = JSON.parse(response);
      console.log(jsonResponse.likes_count);
      console.log($(event.target).parent())
    })
  })
});
