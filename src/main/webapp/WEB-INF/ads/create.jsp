<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
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
            </fieldset>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
