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
      $('#post-list').append(response)
      $form.reset()
    })
  })

  $('#post-list').on('click', '.input', function(e) {
    e.preventDefault()
    var $form = $(this).parent();
    var $postUrl = $form.attr('action')
    var id = $postUrl.match(/\d+/)[0]
    $.ajax({
      type: 'put',
      url: '/posts/' + id + '/like'
    }).done(function(response) {
      var $likes = $form.parent().find('.post-detail')[1]
      $($likes).text(response + ' likes');



    })

  })

})
