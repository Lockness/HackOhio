
function getLocation() {
    console.log("1");
    if (navigator.geolocation) {
        console.log("2");
        var location = navigator.geolocation.getCurrentPosition(search);
    } else {
    }
}

function search(position) {
    console.log("3");
    if (navigator.geolocation) {
        console.log("4");
        var lat = position.coords.latitude;
        var long = position.coords.longitude;
        var myLocation = new google.maps.LatLng(lat, long);

        var map = new google.maps.Map(document.getElementById('map'), {
            center: myLocation,
            zoom: 15
        });

        console.log("BREAK");
        var request = {
            location: myLocation,
            radius: '500',
            query: document.getElementById('indexSearch').value
        };

        var service = new google.maps.places.PlacesService(map);
        service.textSearch(request, callback);
    }
}

function callback(results, status) {
    if (status == google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
            var place = results[i];
            console.log(results[i]);
        }
    }
}

