
function search(position) {
    var keywords = encodeURI(document.getElementById('indexSearch').value);
    if (keywords.length == 0) {
        return;
    }
        
    var url = window.location.href + 'results/listings?keywords=' + keywords;
    if (position != null) {
        var lat = position.coords.latitude;
        var lng = position.coords.longitude;
        url += "&location=" + lat + "," + lng;
        url += "&radius=1000";
    }

    window.location.href = url;
}

function buttonClicked() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(search);
    }
    else {
        search(null);
    }
}

$(document).ready(function() {
	// if text input field value is not empty show the "X" button
	$("#field").keyup(function() {
		$("#x").fadeIn();
		if ($.trim($("#field").val()) == "") {
			$("#x").fadeOut();
		}
	});
	// on click of "X", delete input field value and hide "X"
	$("#x").click(function() {
		$("#field").val("");
		$(this).hide();
	});
});
