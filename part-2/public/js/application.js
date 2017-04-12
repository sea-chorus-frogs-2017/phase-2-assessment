$(document).ready(function() {
  $('#new-post-form').on('submit', function(e) {
    e.preventDefault();
    var review = $(this).serialize()
    var route = $(this).attr('action')
    var submitReview = $.ajax({
      url: route;
      type: 'POST';
      data: review;
    });
    submitReview.done(function(r) {
      $('#post-list').prepend(r);
    });
  });
});
