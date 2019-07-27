$(function createReservation() {
  $('form').submit(function(event) {
    event.preventDefault();

    var values = $(this).serialize();
    var id = $("h1");

    var posting = $.post('/listings/' + id[0].id + '/reservations', values);

    posting.done(function(data) {
      reservation = data;
      date = reservation["start_date"].slice(0, 10);
      $(`#${date}`).text("Booked");
    });
  });
});
