
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/form.css">
    <title>Hosts</title>
    <meta name="viewport" content="width=device-width, user-scalable=0">
</head>
<body>
<c:import url="/WEB-INF/header/main.jsp"/>
<div class="content">
    <form action="/guests" id="form" <c:if test="${guest == null}">method="POST" </c:if> >
        <h1><c:choose><c:when test="${guest == null}">New</c:when><c:otherwise>Edit</c:otherwise></c:choose> Host</h1>
        <label for="name">Name</label>
        <input type="text" name="name" id="name" autocomplete="off" autofocus="autofocus" value="${guest.getName()}" required>
        <label for="document">Document</label>
        <input type="text" name="document" id="document" autocomplete="off" value="${guest.getDocument()}" required>
        <label for="birth_date">Birth Date</label>
        <input type="date" name="birth_date" id="birth_date" autocomplete="off" value="${guest.getBirthDate()}" required>
        <label for="email">E-mail</label>
        <input type="email" name="email" id="email" autocomplete="off" value="${guest.getEmail()}" required>
        <label for="phone_number">Phone Number (+91)</label>
        <input type="tel" pattern="[1-9]{1}[0-9]{9}" t name="phone_number" id="phone_number" autocomplete="off" value="${guest.getPhoneNumber()}"  required>

        <div class="submit">
            <button onclick="window.history.go(-1);" type="button">Cancel</button>
            <input type="submit" value="Submit" id="button">
        </div>
    </form>
</div>
</body>
<script>


    function send(e){
        e.preventDefault();
        let url = "/guests/${guest.getId()}";

        fetch(url, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            },
            body: new URLSearchParams({
                'name': document.getElementById("name").value,
                'document': document.getElementById("document").value,
                'birth_date': document.getElementById("birth_date").value,
                'email': document.getElementById("email").value,
                'phone_number': document.getElementById("phone_number").value
            }),
        }).then(resp => {   window.location.href = url });
    }

    if(document.getElementById("form").method !== "post"){
        document.getElementById("form").addEventListener("submit", send);
    }

</script>
</html>
