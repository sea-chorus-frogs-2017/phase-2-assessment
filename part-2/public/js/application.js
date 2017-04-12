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
    })
  })
});
