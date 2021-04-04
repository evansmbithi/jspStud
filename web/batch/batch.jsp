<%-- 
    Document   : course
    Created on : 02-Jan-2020, 13:06:51
    Author     : MAESTRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kidero School</title>
        <link rel="icon" type="image/png" href="../img/bk4.jpg" sizes="196 x 196"/>   
        <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>        
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../style.css" rel="stylesheet" type="text/css"/>   
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#"><img src="../img/bk4.jpg" height="30px" alt=""/> Kidero School</a>
            
                <button class="navbar-toggler" type="button" data-toggle="collapse" datatarget="#navbarNav" 
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../home.jsp">Home </a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="../course/course.jsp">Course</a>
                        
                    </li>
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Batch<span class="sr-only">(current)</span></a>
                    </li>  
                    
                    <li class="nav-item">
                        <a class="nav-link" href="../student/student.jsp">Student</a>
                    </li>  
                                        
                </ul>
            </div>
        </nav> 
        <div style="border-bottom: solid 1px; height: 45px; margin-bottom: 10px">
        <h1>Batch</h1>
        </div>
        <div class="row">
            
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Batch Name</label>
                        <input type="text" id="batch" name="batch" placeholder="Batch Name" class="form-control" required/>
                    </div>
                    
                    <div>
                        <label class="form-label">Year</label>
                        <input type="text" id="year" name="year" placeholder="Year" class="form-control" required/>
                    </div>
                    <br>
                     <div>
                        <input type="submit"  name="submit" value="Submit" class="btn btn-info" required/>
                        <input type="reset" name="reset" value="Reset" class="btn btn-warning" required/>
                    </div>
                        
                </form>
            </div>
            
            <div class="col-sm-8">
                <div class="panel-body">
                    <table id="tbl-course" class="table table-responsive table-hover" cellpadding="0" width="100%">
                        <tr>
                            <th>Batch Name</th>
                            <th>Year</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        
                        <%
                            Connection con;
                            Statement st;
                            ResultSet rs;
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                            String query = "select * from batch";
                            st = con.createStatement();
                            rs = st.executeQuery(query);
                            
                            while(rs.next()){
                                String id = rs.getString("id");
                            
                        %>
                        
                        <tr>
                            <td><%=rs.getString("batchname")%></td>
                            <td><%=rs.getString("year")%></td>
                            <td><a href="batchupdate.jsp?id=<%= id%>">Edit</a></td>
                            <td><a href="confirmation.jsp?id=<%= id%>">Delete</a></td>
                        </tr>
                        
                        <%  }   %>
                    </table>
                
            </div>
            
        </div>
    </body>
</html>
