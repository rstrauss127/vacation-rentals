class Listing {
  constructor(data) {
    this.id = data.id;
    this.title = data.title;
    this.address = data.address;
    this.city = data.city;
    this.state = data.state;
    this.description =  data.description;
  }
}

Listing.prototype.format = function () {
  $(`#listing-${this.id}`).append(`<a href=listings/${this.id}>${this.title}</a>`);
};

$(function getListings() {
    $("#getListings").on("click", function() {
      $.get('/listings.json', function(data) {
        for(i = 0; i < data.length; i++) {
          listing = new Listing(data[i]);
          listing.format();
        };
      });
    });
});




$(function initMap() {
  $(".map").on("click", function() {
    $.get('/listings/' + $(this).data("id") + ".json", function (data) {
      $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${data["address"]},+${data["city"]},+${data["state"]}&key=AIzaSyBhyxBrZNJeKGNZQuFdE6Phx_BDhkERGik`, function(map_data) {
        const cords = {lat: map_data.results[0].geometry.location.lat, lng: map_data.results[0].geometry.location.lng};
        const map = new google.maps.Map(document.getElementById('map'), {zoom: 14, center: cords});
        const marker = new google.maps.Marker({
          position: cords,
          map: map
        });
      });
    });
  });
});
