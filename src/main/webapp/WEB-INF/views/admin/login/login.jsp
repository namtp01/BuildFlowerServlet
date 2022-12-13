<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlowerShop Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/admin/dist/css/loginstyle.css">

</head>
<body>
<div class="container">
    <div class="blueBg">
        <div class="formBx">
            <div class="form signinForm">
                <form  method="post">
                    <h3>Sign In</h3>
                    <input type="text" id="loginUsername" placeholder="User Name" name="loginUsername" required>
                    <input type="password" id="loginPassword" placeholder="Password" name="loginPassword" required>
                    <input type="submit" id="Login" name="Login" value="Login">
                </form>
            </div>
        </div>
    </div>

</div>
</body>
</html>