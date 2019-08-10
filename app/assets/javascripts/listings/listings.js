$(document).ready(function() {
    sortListings();
});

function sortListings() {
  $("#sort").on("click", function() {
    $.get('/listings.json', function(data) {
      data.sort(function(a, b) {
        var nameA = a.title.toUpperCase(); // ignore upper and lowercase
        var nameB = b.title.toUpperCase(); // ignore upper and lowercase
        if (nameA < nameB) {
          return -1;
        }
        if (nameA > nameB) {
          return 1;
        }

        // names must be equal
        return 0;
      }
    );
      data.forEach(function(element) {
        const l = new Listing(element);
        l.format();
      })
    });
  })
}


function initMap() {
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
};

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
  $(`.listings`).append(`<a href=listings/${this.id}>${this.title}</a>`);
};
