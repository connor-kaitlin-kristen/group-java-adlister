<%--
  Created by IntelliJ IDEA.
  User: connorwulf
  Date: 2/3/21
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing one Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="adcard w-1/3 mx-auto mt-2 p-2">
    <h2>${ad.title}</h2>
    <p>${ad.description}</p>
    <c:forEach var="category" items="${ad.categories}">
        <span class="pill">${category}</span>
    </c:forEach>
    <c:if test="${sessionScope.user != null && sessionScope.user.id == ad.userId}">
        <a href="/ad/edit/${ad.id}">Edit?</a>
        <a href="/ad/delete/${ad.id}">Delete</a>
    </c:if>
</div>
</body>
<script src="../js/index.js"></script>
</html>
