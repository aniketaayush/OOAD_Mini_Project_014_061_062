<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oleo+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/form.css">
    <title>Login</title>
</head>
<body>
<form method="POST" action="/auth/login" id="form-login">
    <h1 style="text-align: center;padding-bottom: 3rem;font-family: 'Oleo Script', cursive;font-size: 32px">Event Hall Management System</h1>
    <h1 style="font-size: 1.5rem;">Login</h1>
    <span id="error">${errorMessage}</span>
    <label for="login">Login</label>
    <input type="text" name="login" id="login" autofocus required>
    <label for="password">Password</label>
    <input type="password" id="password" name="password" required>
    <div class="submit">
        <input type="submit" value="Login">
    </div>
</form>

<script>

    const error = document.getElementById("error");

    if(error.innerHTML != ""){
        error.style.display = "inline";
    }
</script>

</body>
</html>