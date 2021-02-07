<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <c:forEach var="ad" items="${sessionScope.userAds}">
        <h1>${ad.title}</h1>
        <p>
           ${ad.description}
        </p>
        <c:forEach var="category" items="${ad.categories}">
            <span>${category}</span>
        </c:forEach>
        <a href="/ad/${ad.id}" >More Details</a>
        <a href="/ad/edit/${ad.id}">Edit?</a>
        <a href="/ad/delete/${ad.id}">Delete</a>
    </c:forEach>
    <a href="/edit">Edit Profile</a>
</body>
</html>
