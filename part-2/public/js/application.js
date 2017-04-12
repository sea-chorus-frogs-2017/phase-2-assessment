$(document).ready(function() {

  $('#sidebar').on("submit",function(e){
    e.preventDefault();
    var data =$(e.target).serialize();
    $.ajax({
      type: 'POST',
      url: '/posts',
      data: data,
    }).done(function(response){
      $('#post-list').prepend(response)
      $('#new-post-form')[0].reset();
    });
  });

   $('#comments').on("submit",function(e){
    e.preventDefault();
    var url = $(e.target).attr("action");
    var article = $(e.target).parent();
    var post = article.children('div')
    var points = post.children()[1]
    $.ajax({
      type: 'PUT',
      url: url,
    }).done(function(response){
      $(points).html(response)
    })

  });

});
