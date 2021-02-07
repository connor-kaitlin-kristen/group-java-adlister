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
    <title>Title</title>
</head>
<body>
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
<script src="../js/hamburger.js"></script>
</html>
