<%@page import="java.sql.*" %>

<%
    String id = request.getParameter("sid");
    String sname = request.getParameter("sname");
    String course = request.getParameter("course");
    String batch = request.getParameter("batch");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("update student set sname=?,course=?,batch=?,address=?,phone=? where id=?");
pst.setString(1, sname);
pst.setString(2, course);
pst.setString(3, batch);
pst.setString(4, address);
pst.setString(5, phone);
pst.setString(6, id);
pst.executeUpdate();
%>

<script>
    alert("Record updated Successfully!!");
    window.location.replace("student.jsp");
</script>