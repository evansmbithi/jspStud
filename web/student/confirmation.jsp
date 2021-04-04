<%
    String id = request.getParameter("id");
    
%>

<script>
    var sure = confirm("Do you wish to delete record?");
                if(sure===true){
                    window.location.replace("studentdelete.jsp?id=<%=id%>");
                }else{
                    window.location.replace("student.jsp");
                }
</script>