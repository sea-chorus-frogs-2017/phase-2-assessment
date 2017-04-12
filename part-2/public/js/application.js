$(document).ready(function() {

  $('#sidebar').on('submit', 'form', function(e) {
    e.preventDefault();
    var postInfo = $(event.target).serialize();

    $.ajax({
      url: '/posts',
      method: 'POST',
      data: postInfo,
    }).done(function(response) {
      console.log(response);
      $('#post-list').prepend('<li>' + response + '</li>');
    });
  });

});



