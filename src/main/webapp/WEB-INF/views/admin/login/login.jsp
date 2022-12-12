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
        <div class="box signin">
            <h2>Already Have An Account?</h2>
            <button class="signinBtn">Sign in</button>
        </div>
        <div class="box signup">
            <h2>Don't Have An Account?</h2>
            <button class="signupBtn">Sign up</button>
        </div>
    </div>

    <div class="formBx">
        <div class="form signinForm">
            <form  method="post">
                <h3>Sign In</h3>
                <input type="text" id="username_admin" placeholder="User Name" name="username" required>
                <input type="password" id="password_admin" placeholder="Password" name="password" required>
                <input type="submit" value="Login">

                <a href="#" class="forgot">Forgot Password?</a>
            </form>
        </div>

        <div class="form signupForm">
            <form method="post">
                <h3>Sign Up</h3>
                <input type="text" id="name" placeholder="Full Name" name="name" required>
                <input type="text" id="username" placeholder="User Name" name="username" required>
                <input type="password" id="password" placeholder="Password" name="password" required>

                <input type="submit" value="Register">
            </form>
        </div>
    </div>

</div>
<script>
    const signinBtn = document.querySelector('.signinBtn');
    const signupBtn = document.querySelector('.signupBtn');
    const formBx = document.querySelector('.formBx');
    const body = document.querySelector('body');
    signupBtn.onclick = function(){
        formBx.classList.add('active')
        body.classList.add('active')
    };
    signinBtn.onclick = function(){
        formBx.classList.remove('active')
        body.classList.remove('active')
    };
</script>
</body>
</html>