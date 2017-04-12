$(document).ready(function() {
  $('#new-post-form').on('submit', function(event) {
    event.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      type: "POST",
      data: $(this).serialize()
    }).done(function(response) {
      $("#post-list").prepend(response);
    })
  })
})
