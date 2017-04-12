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

});
