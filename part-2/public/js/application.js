$(document).ready(function() {
  $('#new-post-form').on('submit', function(event) {
    event.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      type: "POST",
      data: $(this).serialize()
    }).done(function(response) {
      $("#post-list").prepend(response);
    });
  });

  $('#post-list').on('submit', '.new-post-like-form', function(event) {
    event.preventDefault();
    var that = this;
    $.ajax({
      url: $(this).attr('action'),
      type: "PUT"
    }).done(function(response) {
      var likeCount = $(that).prev().children()[1];
      $(likeCount).html(response + " likes")
    })
  })
});
