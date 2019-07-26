$(function getListings() {
    const req = new XMLHttpRequest();
    req.open('GET', '/listings');
    req.send();
});
