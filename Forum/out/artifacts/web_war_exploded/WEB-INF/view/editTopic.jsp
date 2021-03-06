<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Редагувати</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <nav class="navbar fixed-top navbar-light bg-light" style="background-color: darkgray">
        <a class="navbar-brand" href="topics">Форум</a>
        <c:if test="${sessionScope.user == null}" >
            <div class="login-container">
                <form action="login" method="post">
                    <input type="email" placeholder="Email" name="email">
                    <input type="password" placeholder="Password" name="password">
                    <button type="submit">Login</button>
                </form>
            </div>
        </c:if>
        <a class="" href="createAccount">Створити акаунт</a>
    </nav>
    <h2 style="margin-top: 60px">Редагування теми "<c:out value="${topic.title}" />"</h2>
    <form action="editTopic" method="post">
        <div class="form-group">
            <label for="exampleFormControlInput1">Заголовок теми</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="topicTitle">
        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Текст публікації</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="topicText"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Змінити</button>
    </form>
</div>
</body>
</html>
