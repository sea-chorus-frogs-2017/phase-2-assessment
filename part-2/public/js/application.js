$(document).ready(function() {
  $("#new-post-form").on("submit", function(e){
    e.preventDefault();
    var postInfo = $(this).serialize()
  });
})
