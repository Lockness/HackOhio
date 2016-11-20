
function searchClicked() {
    var keywords = encodeURI(document.getElementById('indexSearch').value);
    window.location.href += 'results/listings?keywords=' + keywords;
    console.log(window.location.href);
}
