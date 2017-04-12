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

  $('.post').on('submit', 'form', function(e) {
    e.preventDefault();
    var article = ($(event.target).parent());
    var url = $(event.target).attr('action');

    $.ajax({
      url: url,
      method: 'PUT',
    }).done(function(response) {
      $($(article).find('span').last()).html(response + " likes");
    });
  });

});



