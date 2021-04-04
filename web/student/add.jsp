<%@page import="java.sql.*" %>

<%
    String sname = request.getParameter("sname");
    String course = request.getParameter("course");
    String batch = request.getParameter("batch");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    
    
Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstud","root","");
pst = con.prepareStatement("insert into student(sname,course,batch,address,phone) values (?,?,?,?,?)");
pst.setString(1, sname);
pst.setString(2, course);
pst.setString(3, batch);
pst.setString(4, address);
pst.setString(5, phone);
pst.executeUpdate();

//out.println("Record added Successfully!!");


%>

<script>
    //alert("Record added Successfully!!");
    window.location.replace("student.jsp");
</script>