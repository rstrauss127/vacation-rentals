$(document).ready(function() {
    getReservations();
});

$(function createReservation() {
  $('form').submit(function(event) {
    event.preventDefault();

    var values = $(this).serialize();
    var id = $("h1");

    var posting = $.post('/listings/' + id[0].id + '/reservations', values);

    posting.done(function(data) { //what's the point of posting.done? do i need to attach an event listener?
      reservation = new Reservation(data);
      date = reservation["start_date"].slice(0, 10);
      $(`#${date}`).text("Booked");
    });
  });
});

function getReservations() {
  $(".getReservations").click(function() {
    $.get("/listings/" + $(this).data("id") + '/reservations.json', function(data) {
      data.forEach(function(element) {
        const reservation = new Reservation(element);
        reservation.format();
      });
    });
  });
};


class Reservation {
  constructor(data) {
    this.start_date = data.start_date;
    this.listing_id = data.listing_id;
    this.user_id = data.user_id;
  }
}
Reservation.prototype.format = function () {
  $("#reservations").append(`<p>${this.user_id} stayed here on ${this.start_date}</p>`);
};
