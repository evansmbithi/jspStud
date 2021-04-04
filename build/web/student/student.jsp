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
                    
                    <li class="nav-item">
                        <a class="nav-link" href="../batch/batch.jsp">Batch</a>
                    </li>  
                                        
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Student<span class="sr-only">(current)</span></a>
                    </li>  
                    
                </ul>
            </div>
        </nav> 
        <div style="border-bottom: solid 1px; height: 45px; margin-bottom: 10px">
        <h1>Student Registration</h1>
        </div>
        <div class="row">
            
            <div class="col-sm-4">
                <form method="POST" align="left" action="add.jsp">
                    <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name" class="form-control" required/>
                    </div>
                    
                    <div>
                        <label class="form-label">Course</label>
                        <select name="course" id="course" class="form-control">
                            <option>Course</option>
                            
                            <%
                                Connection con;
                                Statement st;
                                ResultSet rs;
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                                st = con.createStatement();
                                String query = "select * from course";
                                rs = st.executeQuery(query);
                                
                                while(rs.next()){
                                    String courseid = rs.getString("id");
                                    String coursename = rs.getString("coursename");
                             %>  
                             <option value="<%=courseid%>" ><%=coursename%></option>  
                            <%        
                                }                            
                             %>
                            
                        </select>
                    </div>
                    
                     <div>
                        <label class="form-label">Batch</label>
                        <select name="batch" id="batch" class="form-control">
                            <option>Batch</option>
                             <%
                                                               
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                                st = con.createStatement();
                                String quer = "select * from batch";
                                rs = st.executeQuery(quer);
                                
                                while(rs.next()){
                                    String batchid = rs.getString("id");
                                    String batchname = rs.getString("batchname");
                             %>  
                             <option value="<%=batchid%>" ><%=batchname%></option>  
                            <%        
                                }                            
                             %>
                        </select>
                    </div>
                    
                     <div>
                        <label class="form-label">Address</label>
                        <input type="text" id="address" name="address" placeholder="Address" class="form-control" required/>
                    </div>
                    
                    <div>
                        <label class="form-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone" class="form-control" required/>
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
                            <th>Student Name</th>
                            <th>Course</th>
                            <th>Batch</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        
                        <%
                                                        
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                            //joining tables
                            String sql = "select s.id,s.sname,c.coursename,b.batchname,s.address,s.phone from student s JOIN course c ON s.course = c.id JOIN batch b ON s.batch = b.id";
                            st = con.createStatement();
                            rs = st.executeQuery(sql);
                            
                            while(rs.next()){
                                String id = rs.getString("s.id");
                            
                        %>
                        
                        <tr>
                            <td><%=rs.getString("s.sname")%></td>
                            <td><%=rs.getString("c.coursename")%></td>
                            <td><%=rs.getString("b.batchname")%></td>
                            <td><%=rs.getString("s.address")%></td>
                            <td><%=rs.getString("s.phone")%></td>
                            <td><a href="studentupdate.jsp?id=<%= id%>">Edit</a></td>
                            <td><a href="confirmation.jsp?id=<%= id%>">Delete</a></td>
                        </tr>
                        
                        <%  }   %>
                    </table>
                
            </div>
            
        </div>
    </body>
</html>
