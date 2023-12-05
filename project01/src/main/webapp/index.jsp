<html>
<head>
    <title>Login</title>
</head>
<link rel= "stylesheet" type= "text/css" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>

    body {
        background-image: url('Farmer.jpg');
    }
</style>
<body>
<div class="container">
    <div class="login-box" style="color: white">
        <div class="row">
            <div class="col-md-6 login-right" >
                <h1 style="font-size:28px; color: black"><b><u>Krishok Login</u></b></h1>
                <form method="POST" action="login.jsp"  style="font-size:12px" >

                    <div class="form-group">
                        <label style="color: black">Email:</label>
                        <input type="text" name="email" class="form-control" recquired>
                    </div>
                    <div class="form-group">
                        <label style="color:black ">Password: </label>
                        <input type="password" name="password" class="form-control" recquired>
                    </div>
                    <button type="submit" class="btn btn-Success">Login</button>

                </form>

            </div>
        </div>
        <a href="regPage.jsp" class="btn btn-Success"> Registration</a>

    </div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"> </script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
