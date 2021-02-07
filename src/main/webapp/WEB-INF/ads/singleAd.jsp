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
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing one Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<h1>Here is a single ad.</h1>
<div>
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
    <c:forEach var="category" items="${ad.categories}">
        <span>${category}</span>
    </c:forEach>
    <c:if test="${sessionScope.user != null && sessionScope.user.id == ad.userId}">
        <a href="/ad/delete/${ad.id}">Delete</a>
    </c:if>
</div>
</body>
<script src="../js/hamburger.js"></script>
</html>
