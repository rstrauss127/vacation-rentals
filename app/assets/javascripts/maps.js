function initMap() {
  // The location of Uluru
  var uluru = {lat: -25.344, lng: 131.036};
  var madbeach = {lat: 27.793443, lng: -82.792302};
  var jons_pass = {lat: 27.785773, lng: -82.783344};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 14, center: madbeach});
  // The marker, positioned at Uluru
  /*var marker = new google.maps.Marker({position: madbeach, map: map});

  var infoWindow = new google.maps.InfoWindow({
    content: 'Beach!!'
  });

  marker.addListener('click', function() {
    infoWindow.open(map, marker);
  });*/
  addMarker(madbeach);
  addMarker(jons_pass)
  //Add marker function
  function addMarker(cords) {
    var marker = new google.maps.Marker({
      position: cords,
      map: map
    });
  }
}
