(function () {
    console.log("hello");
    const nav = document.querySelector('#nav');
const hamburger = document.querySelector('#hamburger');

hamburger.addEventListener('click', function() {
    if (nav.classList.contains('max-h-12')) nav.classList.remove('max-h-12');
        else nav.classList.add('max-h-12');
})
















})();