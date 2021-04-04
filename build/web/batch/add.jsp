<%@page import="java.sql.*" %>

<%
    String batchname = request.getParameter("batch");
    String year = request.getParameter("year");
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("insert into batch(batchname,year) values (?,?)");
pst.setString(1, batchname);
pst.setString(2, year);
pst.executeUpdate();

//out.println("Record added Successfully!!");


%>

<script>
    //alert("Record added Successfully!!");
    window.location.replace("batch.jsp");
</script>