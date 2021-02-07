<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav id="nav" class="p-0.5 w-full bg-green-900 text-purple-100 max-h-12 overflow-y-hidden">
    <div class="flex flex-col sm:flex-row justify-between items-center">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="flex justify-between sm:m-0 mt-1 w-full sm:w-min">
            <div class="flex items-center">
                <a class="ml-1 button-home" href="/">HexLister</a>
            </div>
            <div id="hamburger" class="mr-1 w-8 h-7 flex items-center sm:hidden">
                <span class="bar"></span>
            </div>
        </div>
        <form class="inline m-0 sm:m-0 mt-5 mb-2 " action="/ads" method="GET">
            <input type="text" name="searchBar" placeholder="Search" class="nav-search">
        </form>
        <ul class="flex items-center flex-col sm:flex-row inline-block">
            <li><a class="navlink" href="/login">LOGIN</a></li>
            <c:if test="${sessionScope.user != null}">
                <li><a class="navlink" href="/logout">LOGOUT</a></li>
            </c:if>
            <li><a class="navlink" href="/register">REGISTER</a></li>
            <c:if test="${sessionScope.user != null}">
                <li><a class="navlink" href="/ads/create">CREATE</a></li>
            </c:if>
            <li><a class="navlink" href="/ads">VIEW ALL</a></li>
        </ul>
    </div>
</nav>
