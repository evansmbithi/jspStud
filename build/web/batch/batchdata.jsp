<%@page import="java.sql.*" %>

<%
    String batchid = request.getParameter("batchid");
    String batchname = request.getParameter("batch");
    String year = request.getParameter("year");
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("update batch set batchname = ?, year = ? where id = ?");
pst.setString(1, batchname);
pst.setString(2, year);
pst.setString(3, batchid);
pst.executeUpdate();

//out.println("Record added Successfully!!");


%>

<script>
    alert("Record updated Successfully!!");
    window.location.replace("batch.jsp");
</script>