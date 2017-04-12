$(document).ready(function() {
  $('#new-post-form').on('submit', function(e) {
    e.preventDefault()
    var $form = $(this)[0];
    var data = $(this).serialize();
    $.ajax({
      type: 'post',
      url: '/posts',
      data: data
    }).done(function(response) {

    })
  })

})
