$(function getListings() {
    $("#getListings").on("click", function() {
      $.get('/listings.json', function(data) {
        for(i = 0; i < data.length; i++) {
          var listing = new Listing(data[i]);
          var listingText = "<p>" + listing.title + "</p>";
          console.log(listingText);
          $("#listing-" + listing.id).append(listingText);
        };
      });
    });
});

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

$(function showDescription() {
  $(".js-more").on("click", function() {
    var id = $(this).data("id");
    $.get("/listings/" + id + ".json", function(data) {
      var descriptionText = "<p>" + data["description"] + "</p>";
      $("#listing-" + id).html(descriptionText);
    });
  });
});

$(function initMap() {
  $(".map").on("click", function() {
    var address = $(this).data("address");
    var city = $(this).data("city");
    var state = $(this).data("state");

    $.get(`https://maps.googleapis.com/maps/api/geocode/json?address=${address},+${city},+${state}&key=AIzaSyBhyxBrZNJeKGNZQuFdE6Phx_BDhkERGik`, function(data) {
      var cords = {lat: data.results[0].geometry.location.lat, lng: data.results[0].geometry.location.lng};

      var map = new google.maps.Map(document.getElementById('map'), {zoom: 14, center: cords});

      var marker = new google.maps.Marker({
        position: cords,
        map: map
      });
    });

  });
});
