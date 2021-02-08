<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="title-page">
        <img class="w-15" src="../../img/foster.png" alt="fostercat">
        <h1 class="">Welcome to the Hexlister, Witches!</h1>
        <div class="title-page-sub">
            <h2>From spell books to familiars, HexLister has plenty of offers to help you and your inner witch.<br>
                Click on ‘View All’ to browse currently-listed ads and find the perfect item for you. Register an account and login to post your own ads.
            </h2>
                <h4>Happy Hexing!</h4>
        </div>
    </div>


<script src="js/index.js"></script>
</body>
</html>
