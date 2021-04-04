<%
    String id = request.getParameter("id");
    
%>

<script>
    var sure = confirm("Do you wish to delete record?");
                if(sure===true){
                    window.location.replace("coursedelete.jsp?id=<%=id%>");
                }else{
                    window.location.replace("course.jsp");
                }
</script>