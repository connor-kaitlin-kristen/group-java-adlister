<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
    <jsp:include page="partials/navbar.jsp" />
    <div class="form">
        <h1 class="merienda dark:text-gray-800 text-xl">Please fill in your information.</h1>
        <form action="/register" method="post">
            <div class="input-wrapper">
                <label for="username" class="labels">Username</label>
                <input id="username" name="username" class="form-input" type="text">
            </div>
            <div class="input-wrapper">
                <label for="email" class="labels">Email</label>
                <input id="email" name="email" class="form-input" type="text">
            </div>
            <div class="input-wrapper">
                <label for="password" class="labels">Password</label>
                <input id="password" name="password" class="form-input" type="password">
            </div>
            <div class="input-wrapper">
                <label for="confirm_password" class="labels">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-input" type="password">
            </div>
            <input type="submit" class="main-btn">
        </form>
        <c:if test="${sessionScope.usernameTaken}">
            <div>Username taken, please try another.</div>
        </c:if>
    </div>
</body>
<script src="../js/index.js"></script>
</html>
