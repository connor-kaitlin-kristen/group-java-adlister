
<nav class="w-full bg-gray-800 text-indigo-100">
    <div class="flex justify-between items-center">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="">
            <a class="button-home" href="/">HexLister</a>
        </div>
        <form class="inline m-0 " action="/ads" method="GET">
            <input type="text" name="searchBar">
            <button>Search</button>
        </form>
        <ul class="flex inline-block">
            <li><a class="p-0.5 inline-block mx-1 border-2 border-white" href="/login">LOGIN</a></li>
            <li><a class="p-0.5 inline-block mx-1 border-2 border-white" href="/logout">LOGOUT</a></li>
            <li><a class="p-0.5 inline-block mx-1 border-2 border-white" href="/register">REGISTER</a></li>
            <li><a class="p-0.5 inline-block mx-1 border-2 border-white" href="/ads/create">CREATE</a></li>
            <li><a class="p-0.5 inline-block mx-1 border-2 border-white" href="/ads">VIEW ALL</a></li>
        </ul>
        <div class="w-8 h-7 flex items-center">
            <span class="bar"></span>
        </div>
    </div>
</nav>
