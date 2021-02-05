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
    <title>Edit Profile</title>
</head>
<body>
<form action="/edit" method="post">
    <div class="form-group">
        <label for="newUsername">Update Username</label>
        <input id="newUsername" name="newUsername" class="form-control" type="text" value="${sessionScope.user.username}">
    </div>
    <div class="form-group">
        <label for="newEmail">Update Email</label>
        <input id="newEmail" name="newEmail" class="form-control" type="text" value="${sessionScope.user.email}">
    </div>
    <div class="form-group">
        <label for="oldPassword">Old Password</label>
        <input id="oldPassword" name="oldPassword" class="form-control" type="password">
    </div>
    <div class="form-group">
        <label for="newPassword">New Password</label>
        <input id="newPassword" name="newPassword" class="form-control" type="password">
    </div>
    <div class="form-group">
        <label for="newPasswordConfirm">Confirm New Password</label>
        <input id="newPasswordConfirm" name="newPasswordConfirm" class="form-control" type="password">
    </div>
    <input type="submit" class="">
</form>

</body>
</html>
