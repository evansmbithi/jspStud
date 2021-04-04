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
            <h1>batch Update</h1>
            
            <div class="col-sm-4">
                <form method="POST" align="left" action="batchdata.jsp">
                    <%
                        String id = request.getParameter("id");
    
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
                        pst = con.prepareStatement("select * from batch where id=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                        while(rs.next()){
                            
                        
                        
                    %>
                    
                    <div>
                        <label class="form-label">Batch ID</label>
                        <input type="text" id="batchid" name="batchid" placeholder="Batch ID" class="form-control" value="<%=rs.getString("id")%>" required/>
                    </div>
                    <div>
                        <label class="form-label">Batch Name</label>
                        <input type="text" id="batch" name="batch" placeholder="Batch Name" class="form-control" value="<%=rs.getString("batchname")%>" required/>
                    </div>
                    
                    <div>
                        <label class="form-label">year</label>
                        <input type="text" id="year" name="year" placeholder="year" class="form-control" value="<%=rs.getString("year")%>" required/>
                    </div>
                    <%  }   %>
                    <br>
                     <div>
                        <input type="submit"  name="submit" value="Submit" class="btn btn-info" required/>
                        <input type="reset" name="reset" value="Reset" class="btn btn-warning" required/>
                        <a href="batch.jsp" class="btn btn-outline-dark">Back</a>
                    </div>
                        
                </form>
            </div>
        </div>
    </body>
</html>
