<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="title-page">
        <img class="w-60 mb-3" src="../../img/fostergreen-1.png" alt="fostercat">
        <h1 class="dark:text-gray-200">Welcome to the Hexlister, Witches!</h1>
        <div class="title-page-sub">
            <h2 class="nunito font-semibold">From spell books to familiars, HexLister has plenty of offers to help you and your inner witch.</h2>
                <br>
            <h2 class="nunito font-semibold">Click on ‘View All’ to browse currently-listed ads and find the perfect item for you. Register an account and login to post your own ads.</h2>
                <br>
            <h2 class="merienda">Happy Hexing!</h2>
        </div>
    </div>


<script src="js/index.js"></script>
</body>
</html>
