$( "document" ).ready(function() {
    console.log( "ready!" );
});

$(function initMap() {
  $(".js-more").on("click", function() {
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
