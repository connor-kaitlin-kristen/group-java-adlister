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
<form action="/ad/edit/${ad.id}" method="post">
    <div class="form-group">
        <label for="title">Title</label>
        <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea id="description" name="description" class="form-control">${ad.description}</textarea>
    </div>
    <button>Save Changes</button>
</form>
</body>
</html>
