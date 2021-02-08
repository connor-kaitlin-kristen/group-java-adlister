<%--
  Created by IntelliJ IDEA.
  User: kristencollier
  Date: 2/5/21
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <title>Edit Profile</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="form">
    <form action="/edit" method="post">
        <div class="input-wrapper">
            <label for="newUsername" class="labels">Update Username</label>
            <input id="newUsername" name="newUsername" class="form-input" type="text" value="${sessionScope.user.username}">
        </div>
        <div class="input-wrapper">
            <label for="newEmail" class="labels">Update Email</label>
            <input id="newEmail" name="newEmail" class="form-input" type="text" value="${sessionScope.user.email}">
        </div>
        <div class="input-wrapper">
            <label for="oldPassword" class="labels">Old Password</label>
            <input id="oldPassword" name="oldPassword" class="form-input" type="password">
        </div>
        <div class="input-wrapper">
            <label for="newPassword" class="labels">New Password</label>
            <input id="newPassword" name="newPassword" class="form-input" type="password">
        </div>
        <div class="input-wrapper">
            <label for="newPasswordConfirm" class="labels">Confirm New Password</label>
            <input id="newPasswordConfirm" name="newPasswordConfirm" class="form-input" type="password">
        </div>
        <input type="submit" class="main-btn">
    </form>
</div>
</body>
<script src="../js/index.js"></script>
</html>
