<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1 class="lemonada text-xl text-bold p-1.5 dark:text-gray-200">Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <div class="grid grid-cols-12 gap-1 mx-1">
        <c:forEach var="ad" items="${sessionScope.userAds}">
        <div class="adcard">
            <h2>${ad.title}</h2>
            <p>
               ${ad.description}
            </p>
            <c:forEach var="category" items="${ad.categories}">
                <span class="pill">${category}</span>
            </c:forEach>
            <a href="/ad/${ad.id}" >More Details</a>
            <a href="/ad/edit/${ad.id}">Edit?</a>
            <a href="/ad/delete/${ad.id}">Delete</a>
        </div>
        </c:forEach>
    </div>
    <a href="/edit" class="dark:text-gray-200">Edit Profile</a>
</body>
<script src="../js/index.js"></script>
</html>
