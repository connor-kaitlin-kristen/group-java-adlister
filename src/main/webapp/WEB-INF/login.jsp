<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="form">
        <h1 class="merienda dark:text-gray-800 text-xl">Please Log In</h1>
        <form action="/login" method="POST">
            <div class="input-wrapper">
                <label for="username" class="labels">Username</label>
                <input id="username" name="username" class="form-input bg-purple-200" type="text">
            </div>
            <div class="input-wrapper">
                <label for="password" class="labels">Password</label>
                <input id="password" name="password" class="form-input bg-purple-200" type="password">
            </div>
            <input type="submit" class="main-btn" value="Log In">
        </form>
    </div>
</body>
<script src="../js/index.js"></script>
</html>
