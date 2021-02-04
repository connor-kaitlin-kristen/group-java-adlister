
<nav class="w-full bg-gray-800 text-indigo-100">
    <div class="flex justify-between">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="">
            <a class="" href="/">HexLister</a>
        </div>
        <ul class="flex">
            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
            <li><a href="/register">register</a></li>
            <li><a href="/ads/create">create</a></li>
            <li><a href="/ads">view All</a></li>
        </ul>
        <form action="/ads" method="GET">
            <input type="text" name="searchBar">
            <button>Search</button>
        </form>
        <div class="w-8 h-7 flex items-center">
            <span class="bar"></span>
        </div>
    </div>
</nav>
