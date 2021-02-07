(function () {
    console.log("hello");
    const nav = document.querySelector('#nav');
    const hamburger = document.querySelector('#hamburger');

    hamburger.addEventListener('click', function() {
    if (nav.classList.contains('max-h-12')) nav.classList.remove('max-h-12');
        else nav.classList.add('max-h-12');
    });

    const searchClick = document.querySelector('#searchBar');
    const massive = document.querySelector('#massiveSearch');
    const xGonGiveItToYa = document.querySelector('.X');

    searchClick.addEventListener('click', function() {
        if(massive.classList.contains('left-full')) {
            massive.classList.remove('left-full')
            massive.classList.add('left-0');
        }
    });

    xGonGiveItToYa.addEventListener('click', function() {
        if(massive.classList.contains('left-0')) {
            massive.classList.remove('left-0')
            massive.classList.add('left-full');
        }
    });

})();