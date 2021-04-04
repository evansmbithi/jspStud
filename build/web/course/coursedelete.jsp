<%@page import="java.sql.*"%>

<%
    String id = request.getParameter("id");
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("delete from course where id=?");
pst.setString(1, id);
pst.executeUpdate();




%>

<script>
    //alert("record deleted successfully!");
    window.location.replace("course.jsp");
</script>