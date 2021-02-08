<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Delius+Unicase&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/searchOverlay.jsp" />
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="form">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="input-wrapper">
                <label for="title" class="labels">Title</label>
                <input id="title" name="title" class="form-input" type="text">
            </div>
            <div class="input-wrapper">
                <label for="description" class="labels">Description</label>
                <textarea id="description" name="description" class="form-input" type="text"></textarea>
            </div>
            <fieldset>
                <label for="hexes">hexes</label>
                <input id="hexes" type="checkbox" name="category" value="hexes">
                <label for="white-magic" >white magic</label>
                <input id="white-magic" type="checkbox" name="category" value="white magic">
                <label for="ingredients">ingredients</label>
                <input id="ingredients" type="checkbox" name="category" value="ingredients">
                <label for="familiars">familiars</label>
                <input id="familiars" type="checkbox" name="category" value="familiars">
                <label for="crystals">crystals</label>
                <input id="crystals" type="checkbox" name="category" value="crystals">
                <label for="spell-books">spell books</label>
                <input id="spell-books" type="checkbox" name="category" value="spell books">
                <label for="transportation">transportation</label>
                <input id="transportation" type="checkbox" name="category" value="transportation">
                <label for="lodging">lodging</label>
                <input id="lodging" type="checkbox" name="category" value="lodging">
                <label for="lost-and-found">lost and found</label>
                <input id="lost-and-found" type="checkbox" name="category" value="lost and found">
                <label for="attire">attire</label>
                <input id="attire" type="checkbox" name="category" value="attire">
            </fieldset>
            <input type="submit" class="main-btn">
        </form>
    </div>
</body>
<script src="../js/index.js"></script>
</html>
