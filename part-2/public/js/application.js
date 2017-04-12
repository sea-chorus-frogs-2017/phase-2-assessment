$(document).ready(function() {
  $('#new-post-form').on('submit', function(e) {
    e.preventDefault();
    var reviewForm = $(this)
    var reviewData = $(this).serialize()
    var route = $(this).attr('action')
    var submitReview = $.ajax({
      url: route,
      type: 'POST',
      data: reviewData
    });
    submitReview.done(function(r) {
      reviewForm.each(function(){
        this.reset();
      });
      $('#post-list').prepend(r);
    });
  });

  $('#post-list').on('submit', '.new-post-like-form', function(e) {
    e.preventDefault();
    var targetLikes = $(this).parent().find('.post-detail').eq(1)
    var route = $(this).attr('action')
    var updateLikes = $.ajax({
      url: route,
      type: 'PUT',
      data: review
    });
  })
});
