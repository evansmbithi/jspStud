<%-- 
    Document   : index
    Created on : 02-Jan-2020, 12:41:03
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
    <body class="img2">
        
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#"><img src="img/bk4.jpg" height="30px" alt=""/> Kidero School</a>
            
                <button class="navbar-toggler" type="button" data-toggle="collapse" datatarget="#navbarNav" 
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="course/course.jsp">Course</a>
                        
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="batch/batch.jsp">Batch</a>
                    </li>  
                    
                    <li class="nav-item">
                        <a class="nav-link" href="student/student.jsp">Student</a>
                    </li>  
                                        
                </ul>
            </div>
            <button class="btn btn-outline-dark" onclick="redir()">Logout</button>
            <script>
               function redir(){
                    window.location.replace("index.jsp");
                }
            </script>
        </nav> 
        <div class="index-title">      
            <h1>Welcome to <span>Kidero School</span></h1>
            <div class="motto">
            <h3>Success Our Pride</h3>
            </div>
        </div>
        <img src="img/bk3(1).jpg" alt=""/>
        
    </body>
</html>
