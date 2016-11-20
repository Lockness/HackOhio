
function searchClicked() {
    var keywords = encodeURI(document.getElementById('indexSearch').value);
    if (keywords.length > 0) {
        window.location.href += 'results/listings?keywords=' + keywords;
    }
}
