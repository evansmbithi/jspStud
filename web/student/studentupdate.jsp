<%-- 
    Document   : batchupdate
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
            <h1>Student Update</h1>
            
            <div class="col-sm-4">
                <form method="POST" align="left" action="studentdata.jsp">
                    <%
                        String id = request.getParameter("id");
    
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
                        pst = con.prepareStatement("select s.id,s.sname,c.id,c.coursename,b.id,b.batchname,s.address,s.phone from student s JOIN course c ON s.course = c.id JOIN batch b ON s.batch = b.id where s.id=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                        while(rs.next()){
                            String sname=rs.getString("s.sname");
                            String scourse=rs.getString("c.coursename");
                            String sbatch=rs.getString("b.batchname");
                            String saddress=rs.getString("s.address");
                            String sphone=rs.getString("s.phone");
                            
                            String cid=rs.getString("c.id");
                            String bid=rs.getString("b.id");
                            
                            
                            
                        
                        
                    %>
                    
                    <div>
                        <label class="form-label">Student ID</label>
                        <input type="text" id="sid" name="sid" placeholder="Student Name" value="<%=id%>" class="form-control" required/>
                    </div>
                    
                   <div>
                        <label class="form-label">Student Name</label>
                        <input type="text" id="sname" name="sname" placeholder="Student Name" value="<%=sname%>" class="form-control" required/>
                    </div>
                    
                    
                    <div>
                        <label class="form-label">Course</label>
                        <select name="course" id="course" class="form-control">
                            <option value="<%=cid%>"><%=scourse%></option>
                            
                            <%
                                
                                Statement st;
                                
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
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
                            <option value="<%=bid%>"><%=sbatch%></option>
                             <%
                                                               
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
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
                        <input type="text" id="address" name="address" placeholder="Address" value="<%=saddress%>" class="form-control" required/>
                    </div>
                    
                    <div>
                        <label class="form-label">Phone</label>
                        <input type="text" id="phone" name="phone" placeholder="Phone" value="<%=sphone%>" class="form-control" required/>
                    </div>
                        <%  }   %>
                        
                    <br>
                     <div>
                        <input type="submit"  name="submit" value="Submit" class="btn btn-info" required/>
                        <input type="reset" name="reset" value="Reset" class="btn btn-warning" required/>
                    </div>
                        
                </form>
            </div>
        </div>
    </body>
</html>
