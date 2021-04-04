<%
    String id = request.getParameter("id");
    
%>

<script>
    var sure = confirm("Do you wish to delete record?");
                if(sure===true){
                    window.location.replace("batchdelete.jsp?id=<%=id%>");
                }else{
                    window.location.replace("batch.jsp");
                }
</script>