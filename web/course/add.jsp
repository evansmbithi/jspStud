<%@page import="java.sql.*" %>

<%
    String coursename = request.getParameter("course");
    String duration = request.getParameter("duration");
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("insert into course(coursename,duration) values (?,?)");
pst.setString(1, coursename);
pst.setString(2, duration);
pst.executeUpdate();

//out.println("Record added Successfully!!");


%>

<script>
    //alert("Record added Successfully!!");
    window.location.replace("course.jsp");
</script>