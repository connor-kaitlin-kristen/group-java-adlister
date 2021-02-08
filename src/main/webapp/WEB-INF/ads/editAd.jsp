<%--
  Created by IntelliJ IDEA.
  User: connorwulf
  Date: 2/3/21
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="form">
    <form action="/ad/edit/${ad.id}" method="post" class="form">
        <div class="input-wrapper">
            <label for="title" class="labels">Title</label>
            <input id="title" name="title" class="form-input" type="text" value="${ad.title}">
        </div>
        <div class="input-wrapper">
            <label for="description" class="labels">Description</label>
            <textarea id="description" name="description" class="form-input">${ad.description}</textarea>
        </div>
        <button class="main-btn">Save Changes</button>
    </form>
</div>
</body>
<script src="../js/index.js"></script>
</html>
