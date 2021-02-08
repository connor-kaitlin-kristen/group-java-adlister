<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<h1>Here Are all the ads!</h1>
<div class="grid grid-cols-12 gap-1 mx-1">
    <c:forEach var="ad" items="${ads}">
        <div class="adcard" data-id="${ad.id}">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <c:forEach var="category" items="${ad.categories}">
                <span class="pill">${category}</span>
            </c:forEach>
            <a href="/ad/${ad.id}" >More Details</a>
        </div>
    </c:forEach>
</div>

</body>
<script src="../js/index.js"></script>
</html>
