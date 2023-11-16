
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf_8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
        email address below.</p>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">
<!--        <label class="pad_top">User ID:</label>
        <input type="text" name="userId" required><br>-->
        <label class="pad_top">User Name:</label>
        <input type="text" name="username" required><br>
        <label class="pad_top">Password:</label>
        <input type="text" name="password" required><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstname" required><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastname" required><br>
        <label class="pad_top">Phone:</label>
        <input type="text" name="phonenumber" required><br>
        <label class="pad_top">Address:</label>
        <input type="text" name="address" required><br>
        <label style="margin-right: 10px"> </label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>