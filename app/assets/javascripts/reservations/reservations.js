$(function createReservation() {
  $('form').submit(function(event) {
    event.preventDefault();

    var values = $(this).serialize();
    var id = $("h1");

    var posting = $.post('/listings/' + id[0].id + '/reservations', values);

    posting.done(function(data) {
      reservation = new Reservation();
      date = reservation["start_date"].slice(0, 10);
      $(`#${date}`).text("Booked");
    });
  });
});

class Reservation {
  constructor(data) {
    this.start_date = data.start_date;
    this.listing_id = data.listing_id;
    this.user_id = data.user_id;
  }
}
