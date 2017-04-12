$(document).ready(function() {

  $('#new-post-form').submit(function(event) {
    // user is submitting filled-out post form
    event.preventDefault();
    $.ajax({
      url: '/posts',
      method: 'POST',
      data:$(event.target).serialize()
    })
    .done(function(response) {
      $('#post-list').prepend(response);
      $('#new-post-form').trigger('reset');
    //   $('#add-horse').removeClass('invisible');
      });
  });

  $('.post-list').click(function(event) {
    // user has clicked somewhere in post-list
    event.preventDefault();
    console.log('user clicked on post-list');
  //   $.ajax({
  //     url: '/posts',
  //     method: 'POST',
  //     data:$(event.target).serialize()
  //   })
  //   .done(function(response) {
  //     $('#post-list').prepend(response);
  //     $('#new-post-form').trigger('reset');
  //   //   $('#add-horse').removeClass('invisible');
  //     });
  });

// $('#add-horse').submit(function(event) {
//   event.preventDefault();
//   $.ajax({
//       url: '/horses/new',
//       method: 'GET'
//     }).done(function(response) {
//       $('#add-horse').addClass('invisible');
//       $('#new-horse-form').html(response);
//       });
// });

// $('#new-horse-form').submit(function(event) {
//     // user is submitting filled-out horse form
//     event.preventDefault();
//     $.ajax({
//       url: '/horses',
//       method: 'POST',
//       data:$(event.target).serialize()
//     }).done(function(response) {
//       $('#horse-container').append(response);
//       $('#new-horse-form').empty();
//       $('#add-horse').removeClass('invisible');
//       });
//   });

//   $("#horse-container a").click(function(event) {
//     event.preventDefault();
//     var horseLink = $(event.currentTarget);
//     var href = horseLink.attr('href');
//     var horseParentLi = horseLink.parent()
//      // note: data-horse-id field has been added to li element
//     // in _horse_element.erb; this tag could be used instead to
//     // determine horseId
//     // var horseId = horseParentLi.attr('data-horse-id')
//     var horseId = href[href.length -1];
//      $.ajax({
//       url: '/horses/' + horseId,
//       method: 'GET',
//     }).done(function(response) {
//       horseParentLi.append(response);
//     });
//   });
});


