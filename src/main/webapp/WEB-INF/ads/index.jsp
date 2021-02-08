<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="grid grid-cols-12 gap-1 mx-1 mt-10">
    <c:forEach var="ad" items="${ads}">
        <div class="adcard" data-id="${ad.id}">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <div>
                <c:forEach var="category" items="${ad.categories}">
                    <span class="pill">${category}</span>
                </c:forEach>
            </div>
            <a href="/ad/${ad.id}" >More Details</a>
        </div>
    </c:forEach>
</div>

</body>
<script src="../js/index.js"></script>
</html>
