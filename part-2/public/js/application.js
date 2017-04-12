$(document).ready(function() {

  $('#sidebar').on('submit', 'form', function(e) {
    e.preventDefault();
    var postInfo = $(event.target).serialize();
    $(this).find("input[type=text], textarea").val("");

    $.ajax({
      url: '/posts',
      method: 'POST',
      data: postInfo,
    }).done(function(response) {
      $('#post-list').prepend('<li>' + response + '</li>');

    });
  });

  $('#comments').on('submit', 'form', function(e) {
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



