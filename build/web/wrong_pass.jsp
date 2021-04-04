<%-- 
    Document   : login
    Created on : 02-Jan-2020, 11:21:31
    Author     : MAESTRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kidero School</title>
        <link rel="icon" type="image/png" href="img/bk4.jpg" sizes="196 x 196"/>   
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="img1">
        <div class="heading">
            <h1><strong>STUDENT MANAGEMENT SYSTEM</strong></h1>
        </div>
        
        <div class="row">
            
            <div class="wom">
                <h1>Login</h1>
                <br>
                <form method="POST" action="loginv.jsp">
                    
                    <div align="left">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" name="uname" id="uname" placeholder="Username" size="30px" required/>
                    </div>
                    <br>
                     <div align="left">
                        <label class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" size="30px" required/>
                        <p>Incorrect password</p>
                    </div>
                    
                    <div align="right">                        
                        <input type="submit" name="submit" id="submit" value="Login" class="btn btn-info"/>
                        
                    </div>    
                    
                </form>                
            </div>
            
                       
        </div>
        <footer style="color: white">Copyright © Maestro 2020</footer>
    </body>
</html>
