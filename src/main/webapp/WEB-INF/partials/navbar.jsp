<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav id="nav" class="p-0.5 w-full bg-darkGreen text-purple-100 max-h-12 overflow-y-hidden">
    <div class="flex flex-col sm:flex-row justify-between items-center">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="flex justify-between sm:m-0 mt-1 w-full sm:w-min flex-grow">
            <div class="flex items-center">
                <img class="w-8" src="../../img/foster.png" alt="fostercat">
                <a class="siteLogo delius" href="/">HEXLISTER</a>
            </div>
            <div id="hamburger" class="mr-1 w-8 h-7 flex items-center sm:hidden">
                <span class="bar"></span>
            </div>
        </div>
        <div id="searchBar" class="cursor-pointer mt-2 sm:mt-0 flex items-center">
            <span class="material-icons navlink">search</span>
            <img class="h-5 px-1 hidden sm:block" src="../../img/line.png" alt="separatingline">
        </div>
        <ul class="flex items-center flex-col sm:flex-row inline-block">
            <li><a class="navlink merienda" href="/login">Login</a></li>
            <c:if test="${sessionScope.user != null}">
                <li><a class="navlink merienda" href="/logout">Logout</a></li>
            </c:if>
            <c:if test="${sessionScope.user == null}">
                <li><a class="navlink merienda" href="/register">Register</a></li>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <li><a class="navlink merienda" href="/ads/create">Create</a></li>
            </c:if>
            <li><a class="navlink merienda" href="/ads">View Listings</a></li>
        </ul>
    </div>
</nav>
