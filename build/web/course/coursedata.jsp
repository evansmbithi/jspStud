<%@page import="java.sql.*" %>

<%
    String courseid = request.getParameter("courseid");
    String coursename = request.getParameter("course");
    String duration = request.getParameter("duration");
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("update course set coursename = ?, duration = ? where id = ?");
pst.setString(1, coursename);
pst.setString(2, duration);
pst.setString(3, courseid);
pst.executeUpdate();

//out.println("Record added Successfully!!");


%>

<script>
    alert("Record updated Successfully!!");
    window.location.replace("course.jsp");
</script>