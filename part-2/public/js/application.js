$(document).ready(function() {
  $("#new-post-form").on("submit", function(e){
    e.preventDefault();
    var postInfo = $(this).serialize()
    $.ajax({
      url: '/posts',
      method: 'POST',
      data: postInfo,
    }).done(function(response){
      $(".errors").hide();
      if(response.includes("<ul class='errors-list'>")){
        $(".sidebar").find("form").prepend(response)
      } else {
        $("#new-post-form")[0].reset();
        $("#post-list").prepend("<li>" + response + "</li>");
      }
    })
  });

  $("#post-list").on("submit", function(e){
    e.preventDefault();
    var url = $(event.target).attr("action");
    var targetSpan = $(event.target).siblings().find(".post-detail")[1];
    $(event.target).find(".submit").prop("disabled", true);
    $.ajax({
      url: url,
      method: 'PUT'
    }).done(function(response){
      $(targetSpan).text(response);
    })
  })
})
