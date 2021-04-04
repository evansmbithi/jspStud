<%-- 
    Document   : courseupdate
    Created on : 02-Jan-2020, 14:15:22
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
          
        
        <div class="row-update">
            <h1>Course Update</h1>
            
            <div class="col-sm-4">
                <form method="POST" align="left" action="coursedata.jsp">
                    <%
                        String id = request.getParameter("id");
    
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
                        pst = con.prepareStatement("select * from course where id=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                        while(rs.next()){
                            
                        
                        
                    %>
                    
                    <div>
                        <label class="form-label">Course ID</label>
                        <input type="text" id="courseid" name="courseid" placeholder="Course ID" class="form-control" value="<%=rs.getString("id")%>" required/>
                    </div>
                    <div>
                        <label class="form-label">Course Name</label>
                        <input type="text" id="course" name="course" placeholder="Course Name" class="form-control" value="<%=rs.getString("coursename")%>" required/>
                    </div>
                    
                    <div>
                        <label class="form-label">Duration</label>
                        <input type="text" id="duration" name="duration" placeholder="Duration" class="form-control" value="<%=rs.getString("duration")%>" required/>
                    </div>
                    <%  }   %>
                    <br>
                     <div>
                        <input type="submit"  name="submit" value="Submit" class="btn btn-info" required/>
                        <input type="reset" name="reset" value="Reset" class="btn btn-warning" required/>
                        <a href="course.jsp" class="btn btn-outline-dark">Back</a>
                    </div>
                        
                </form>
            </div>
        </div>
    </body>
</html>
